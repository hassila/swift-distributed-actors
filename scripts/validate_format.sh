#!/bin/bash
##===----------------------------------------------------------------------===##
##
## This source file is part of the Swift Distributed Actors open source project
##
## Copyright (c) 2019 Apple Inc. and the Swift Distributed Actors project authors
## Licensed under Apache License v2.0
##
## See LICENSE.txt for license information
## See CONTRIBUTORS.md for the list of Swift Distributed Actors project authors
##
## SPDX-License-Identifier: Apache-2.0
##
##===----------------------------------------------------------------------===##

set -u

# verify that swiftformat is on the PATH
command -v swiftformat >/dev/null 2>&1 || { echo >&2 "'swiftformat' could not be found. Please ensure it is installed and on the PATH."; exit 1; }

printf "=> Checking format... "
FIRST_OUT="$(git status --porcelain)"
swiftformat . > /dev/null 2>&1
SECOND_OUT="$(git status --porcelain)"
if [[ "$FIRST_OUT" != "$SECOND_OUT" ]]; then
  printf "\033[0;31mformatting issues!\033[0m\n"
  git --no-pager diff
  exit 1
else
  printf "\033[0;32mokay.\033[0m\n"
fi
