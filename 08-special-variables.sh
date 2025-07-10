#!/bin/bash

echo "all variables: $@"
echo "number of variables:$#"
echo "script name: $0"
echo "current working directory: $PWD"
echo "home directory of current user: $HOME"
echo "which user running the script: $USER"
echo "hostname: $HOSTNAME"
echo "pid of the present script: $$"
echo "process id of the last background cmd: $!"
echo "exit status of the last cmd:$?"