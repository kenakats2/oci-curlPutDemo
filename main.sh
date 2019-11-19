#!/bin/bash
####################################################
# ScriptName  : main.sh
# Description: Invoke oci-curl
# HowTo : # path/main.sh
# Change_tracking: Date /Description
# 2019/04/18/ create
####################################################

. function.sh

# Source(local) file name
sourceFileName="source.txt"

# Target(Object Storage) file name
targetFileName="target.txt"

# Execute oci-curl: put(local -> obj)
oci-curl $objEndPoint put $sourceFileName "/n/${namespace}/b/${bucketName}/o/${targetFileName}"

# Check status
if [ $? -eq  0 ];then

  msg="Processing success!"
  echo -e '\e[1;32m'$msg'\e[m'

else
  msg="Error: processing terminated"
  echo -e '\e[1;31m'$msg'\e[m'

fi
