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


# get_folders
if [ "$operate" == "get_folders" ];
then
  if [ "$username" == "" ];
  then 
    echo "Warning - empty folders"
  elif [ "$username" != "user1" ];
  then 
    echo "Error - unknown users"
  else
    echo "1001|Work|The working files and necessary files are here|2020-07-31 10:00:00|user1"
  fi
fi


#  rename_folder
if [ "$operate" == "rename_folder" ];
then
  folder_id="$3"
  if [ "$username" != "user1" ];
  then
    echo "Error - unknown user"
  elif [ "$folder_id" != 1001 ];
  then
    echo "Error - folder_id not found"
  else
    echo "Success"
  fi
fi


# delete_folder
if [ "$operate" == "delete_folder" ];
then
  folder_id="$3"
  if [ "$username" != "user1" ];
  then
    echo "Error - folder owner not match"
  elif [ "$folder_id" != 1001 ];
  then
    echo "Error - folder doesn’t exist"
  else
    echo "Success"
  fi
fi


# upload_file
if [ "$operate" == "upload_file" ];
then
  folder_id="$3"  
  if [ "$username" != "user1" ];
  then
    echo "Error - unknown user"
  elif [ "$folder_id" != 1002 ];
  then
    echo "Error - folder_id not found"
  else
    echo "Success"
  fi
fi


# get_files
if [ "$operate" == "get_files" ];
then
  folder_id="$3"
  if [ $username != "user1" ];
  then 
    echo "Error - unknown users"
  elif [[ $folder_id != ?(-)+([0-9]) ]];
  then 
    echo "Warning - empty files"
  elif [ "$folder_id" != 1002 ];
  then
    echo "Error - folder_name not found"
  else 
    echo -e  "1.png|png|the picture for first test case|2020-07-31 10:01:00|user1\n1.tc|tc|first test case for a company|2020-07-31 10:00:40|user1"
  fi
fi



#  delete_file
if [ "$operate" == "delete_file" ];
then
  folder_id="$3"
  file_name="$4"
  if [ "$username" != "user1" ];
  then
    echo "Error - unknown user" 
  elif [ "$folder_id" != 1002 ];
  then
    echo "Error - folder_id not found"
  elif [ "$file_name" == "" ];
  then
    echo "Error - file_name not found"
  else
    echo "Success"
  fi
fi