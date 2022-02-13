#!/bin/bash
file_count() {
  # Number of files in the present
  # working directory.
  echo "Do you wish to display all files? [y/n]"
  read -r input
  if [ $input == "y" ]; then
    local VAR=$(ls)
    echo "Files: $VAR"; echo "OK"
  else
    echo "Content failed to start!"
  fi
}
file_count
