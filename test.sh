#!/bin/bash

logfile="lepetitadmin.conf"

if  grep -q 'rotate 14' $logfile &&
    grep -q 'daily' $logfile &&
    grep -q 'compress' $logfile
then
    logrotate -f lepetitadmin.conf
    if $? == 0
    then
        echo "ok"
        exit 0
    fi
fi
exit 1
