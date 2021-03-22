#!/usr/bin/env bash

function gcm {
  kubectl get configmap $@ -o yaml;
}

function kpf {
  result=$(kubectl get pod | grep -m1 $@)
  exitCode=$?
  if [ ! "$exitCode" -eq 0 ]; then
    echo "Could not find pod matching [$@]."
    return 1;
  fi
  podName=$(echo $result | awk '{print $1}')
  echo "Forwarding port 8080 of $podName to local port 8080"
  kubectl port-forward $podName 8080:8080
}

function klp {
  result=($(kubectl get pod | grep $@))
  exitCode=$?
  if [ ! "$exitCode" -eq 0 ]; then
    echo "Could not find pod matching [$@]."
    return 1;
  fi
  read -n 1 -p "Press any key for logs of ${result[0]} and ${result[5]}"
  (kubectl logs --tail=10 -f ${result[0]} & kubectl logs --tail=10 -f ${result[5]} &) | tee
}

function kfp {
  kubectl get pod -o wide | grep $@;
}

function kfs {
  kubectl get service -o wide | grep $@;
}

function kfd {
  kubectl get deployment -o wide | grep $@;
}

function ksh {
  kubectl exec -ti $@ sh;
}

function kbash {
  kubectl exec -ti $@ bash;
}

function kph {
  kubectl exec -ti $@ -- sh -c 'apk -q update; apk add -q curl jq; curl localhost:8080/__health | jq';
}

function kstop {
  echo "Stopping $1"
  desired_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].spec.replicas}');
  kubectl scale --replicas=0 deployments/$1;
  current_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].status.availableReplicas}')
  while [ ! -z "$current_replicas" ]; do
    sleep 1;
    current_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].status.availableReplicas}')
  done;
  echo "Stopped [$desired_replicas] instances of $1."
  return $desiredReplicas
}

function kstart {
  echo "Scaling deployment $1 up to $2 replicas...";
  kubectl scale --replicas=$2 deployments/$1;
  if [ "$3" == "skipCheck" ]; then
    echo "Skipping healthchecks"
    return
  fi
  default_sleep=10
  initial_sleep=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].spec.template.spec.containers[0].readinessProbe.initialDelaySeconds}')
  initial_sleep=${initial_sleep:-10}
  echo "Waiting $initial_sleep seconds for the first readiness probe check..."
  sleep $initial_sleep
  period_sleep=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].spec.template.spec.containers[0].readinessProbe.periodSeconds}')
  period_sleep=${period_sleep:-10}
  while [ "$current_replicas" != "$2" ]; do
    echo "Waiting $period_sleep seconds until checking the node count"
    sleep $period_sleep
    current_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].status.availableReplicas}')
    current_replicas=${current_replicas:-0}
    echo "Current nr of replicas: $current_replicas"
  done;
  echo "$1 restarted"
}

function krs {
  echo "Scaling $1"
  desired_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].spec.replicas}');
  echo "Desired nf or replicas: $desired_replicas";
  echo "Scaling deployment $1 down to 0 replicas...";
  kubectl scale --replicas=0 deployments/$1;
  current_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].status.availableReplicas}')
  while [ ! -z "$current_replicas" ]; do
    sleep 1;
    current_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].status.availableReplicas}')
  done;
  echo "Scaling deployment $1 up to $desired_replicas replicas...";
  kubectl scale --replicas=$desired_replicas deployments/$1;
  if [ "$2" == "skipCheck" ]; then
    echo "Skipping healthchecks"
    return
  fi

  default_sleep=10
  initial_sleep=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].spec.template.spec.containers[0].readinessProbe.initialDelaySeconds}')
  initial_sleep=${initial_sleep:-10}
  echo "Waiting $initial_sleep seconds for the first readiness probe check..."
  sleep $initial_sleep
  period_sleep=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].spec.template.spec.containers[0].readinessProbe.periodSeconds}')
  period_sleep=${period_sleep:-10}
  while [ "$current_replicas" != "$desired_replicas" ]; do
    echo "Waiting $period_sleep seconds until checking the node count"
    sleep $period_sleep
    current_replicas=$(kubectl get deployments --selector=app=$1 -o jsonpath='{$.items[0].status.availableReplicas}')
    current_replicas=${current_replicas:-0}
    echo "Current nr of replicas: $current_replicas"
  done;
  echo "$1 restarted"
}

function kstat {
  for node in  $(kubectl get nodes | tail -n +2 | awk '{print $1}'); do
    echo $node
    echo -e "$(kubectl describe node $node | grep -A 4 "Allocated resources")\n";
  done
}

function krdy {
  for node in  $(kubectl get nodes | tail -n +2 | awk '{print $1}'); do
    echo $node
    echo -e "$(kubectl describe node $node | grep  "Ready")\n";
  done
}
