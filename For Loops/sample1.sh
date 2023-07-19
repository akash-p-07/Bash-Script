#!/bin/bash  
#Numbers from 1 to 20, ignoring from 6 to 15 using continue statement"  
  
for ((i=1; i<=20; i++));  
do  
if [[ $i -gt 5 && $i -lt 16 ]];  
then  
continue  
fi  
echo $i  
done  