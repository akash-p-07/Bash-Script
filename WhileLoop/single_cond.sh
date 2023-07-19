#!/bin/bash  
#Script to get specified numbers  
  
read -p "Enter starting number: " snum  
read -p "Enter ending number: " enum  
  
while [[ $snum -le $enum ]];  
do  
echo $snum  
((snum++))  
done  
  
echo "This is the sequence that you wanted."  