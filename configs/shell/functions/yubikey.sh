#!/usr/bin/env bash

function yubikey_release {
  systemctl --user restart yubikey-agent
  killall -HUP yubikey-agent
  gpgconf --kill gpg-agent
}
