#!/bin/bash

directory=/etc

if [ -d $directory ]
then
     echo "The driectory $directory exists."
     exit 0
else
     echo "The directory $directory doesn't exist."
     exit 1
fi