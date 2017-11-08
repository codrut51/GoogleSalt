#!/bin/sh
#echo $1, $2;
salt $1"*" cmd.run "touch google.conf";
salt $1"*" cmd.run "printf '$2' > google.conf";
salt $1"*" cmd.run "tee -a /etc/yum.repos.d/google-cloud-sdk.repo < google.conf";
salt $1'*' cmd.run "yum -y install google-cloud-sdk" stdin="\nyes\nyes\n\n"
salt $1'*' cmd.run "yum -y install kubectl" stdin="yes\n\nyes"