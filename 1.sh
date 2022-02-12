#!/bin/bash
file_count() {
  # Number of files in the present
  # working directory.
  echo "Do you wish to display all files? [y/n]"
  read -r answer
  if [ $answer -eq "y" ]; then
    LOCAL_VARIABLE=$(ls)
    elif [ $? -eq 0 ]; then 
      echo "OK"
      exit 
    else 
      echo "FALSE"
      exit 
  else 
    echo "Directories failed to start!"
    exit
  fi
}
file_count; echo "Loading.."
