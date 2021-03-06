#!/bin/bash

# Checks whether the given package is installed w/ apt.
apt_installed() {
    dpkg-query -Wf'${db:Status-abbrev}' "$1" 2>/dev/null | grep -q '^i'
}

# Checks whether the binary is installed/exists.
bin_installed() {
  path=$(which "$1" 2>/dev/null)
  if [[ "$path" == "" ]]; then
    return 1
  fi
  return 0
}

# Converts the given string to a boolean value. 
# [yY] / empty: true.
# *           : false.
confirm() {
  read -p " [Y/n] " -n 1 c
  if [[ $c == "" ]]; then 
    return 0
  fi

  echo > /dev/tty

  case "$c" in 
    [yY]) 
    return 0 
  esac
  return 1
}

# Inverse of confirm().
# [nN] / empty: false.
# *           : true.
negate() {
  read -p " [y/N] " -n 1 c
  if [[ $c == "" ]]; then
    return 1
  fi

  echo > /dev/tty

  case "$c" in
    [nN])
    return 1
  esac
  return 0
}

