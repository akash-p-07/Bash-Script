#!/bin/bash

exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file."
    fi
}

if grep -q "Arch"$release_file
then
      # The host is based on Arch, run the pacman update command
      sudo pacman -Syu 1>>$logfile 2>>$errorlog
      check_exit_status
      sudo apt dist-upgrade -y 1>> $logfile 2>>$errorlog
      if [ $? -ne 0 ]
      then
          echo "An error occurred, please check the $errorlo file."
      fi
fi