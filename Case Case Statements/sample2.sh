#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
   echo "Who is your favourite driver?"

   echo "1 - Lewis"
   echo "2 - Fernando"
   echo "3 - Daniel"
   echo "4 - Sebastian"
   echo "5 - Nico"
   echo "6 - Someone else..."
   echo "7 - Exit the script."

   read distro;

   case $distro in
       1) echo "Arch is a rolling release.";;
       2) echo "CentOS is popular on servers.";;
       3) echo "Debian is a community distribution.";;
       4) echo "Mint is popular on desktops and laptops.";;
       5) echo "Ubuntu is popular on both servers and computers.";;
       6) echo "There are many distibutions out there.";;
       7) finished=1 ;;
       *) echo "You didn't enter an appropriate choice.";;
    esac
done

echo "Thank you for using this script."