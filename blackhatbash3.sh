#!/usr/bin/env bash
set -x
book=”black hat bash”
echo “This book’s name is ${book}
set +x

root_directory=$(ls -ld /)
echo “${root-directory}”

set -x
unset book 
echo “${book}
set +x