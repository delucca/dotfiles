#!/usr/bin/env bash

function yubikey_release {
  killall -HUP yubikey-agent
  gpgconf --kill gpg-agent
}
