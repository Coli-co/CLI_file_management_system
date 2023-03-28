#!/bin/bash

# different operation by user
operate="$1" # operation variable
name="$2" # username variable
# check username from upper to lowercase
username=${name,,}

# Check if the user exists
if [ "$operate" == "register" ];
then
  if [ "$username" != "user1" ];
  then
    echo "Error - user already existing"
  else
    echo 'Success'
  fi
fi