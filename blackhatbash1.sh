#!/usr/bin/env bash
set -x
bash --version
env
echo {SHELL}
echo {RANDOM}
echo ${UID}
echo ${OSTYPE}
set +x
# man ls (It is used to list the contents of a directory.)
# ps -e -f
# ps -ef
# df
# --human-readable
# Put at the beginning of the script #!/usr/bin/env bash
# bash -r blackhatbash1.sh (restricted debugging)
# Debug script: bash -n blackhatbash1.sh
# bash -x blackhatbash1.sh (debugs the entire script so it can generate a loop)