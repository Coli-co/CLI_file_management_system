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

# create_folder
if [ "$operate" == "create_folder" ];
then
  folder_name="$3"
  if [ "$username" != "user1" ];
  then 
    echo "Error - unknown user"
  elif [ "$folder_name" == "‘Work’" ];
  then
    echo "1001"
  else
    echo "1002"
  fi
fi