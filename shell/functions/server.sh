#!/usr/bin/env bash

function ff_s3ql_status() {
  ssh -t ubuntu@fonsecafloriano.com 'sudo systemctl status s3ql'
}

function ff_s3ql_restart() {
  ssh -t ubuntu@fonsecafloriano.com 'sudo systemctl restart s3ql'
}

function ff_s3ql_ls() {
  ssh -t ubuntu@fonsecafloriano.com 'sudo ls /mnt/bucket.fonsecafloriano.com'
}

function ff_s3ql_fsck() {
  ssh -t ubuntu@fonsecafloriano.com 'sudo fsck.s3ql '
}

function ff_docker_up() {
  ssh -t ubuntu@fonsecafloriano.com 'cd /opt/fonsecafloriano; sudo docker-compose up -d'
}
