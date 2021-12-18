#!/usr/bin/env bash

function yubikey_release {
  sudo systemctl restart pcscd.service
}
