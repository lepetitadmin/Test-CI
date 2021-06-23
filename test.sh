#!/bin/bash

set -x

logfile="result/lepetitadmin.conf"

if  grep -q 'rotate 14' $logfile &&
    grep -q 'daily' $logfile &&
    grep -q 'compress' $logfile
then
    logrotate -d $logfile
    if [ $? -eq 0 ]
    then
        echo "ok"
        exit 0
    fi
fi
exit 1
