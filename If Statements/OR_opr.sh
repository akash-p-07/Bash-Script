#!/bin/bash  
  
# TRUE || FALSE  
if [ 8 -gt 7 ] || [ 10 -eq 3 ];  
then   
echo " Condition is true. "  
fi  
  
# FALSE || FALSE  
if [ "mylife" == "yourlife" ] || [ 3 -gt 10 ];  
then  
echo " Condition is false. "  
fi  