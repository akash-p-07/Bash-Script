Functions in bash scripting are a great option to reuse code. A Bash function can be defined as a set of commands which can be called several times within bash script. The purpose of function in bash is to help you make your scripts more readable and avoid writing the same code again and again. It also allows the developers to break a complicated and lengthy code to small parts which can be called whenever required. Functions can be called anytime and repeatedly, which will enable us to reuse, optimize, and minimize the code.

Following are some key points about bash functions:

A function has to be declared in the shell script before we can use it.
Arguments can be passed to the functions and accessed inside the function as $1, $2, etc.
Local variables can be assigned within the function, and the scope of such variables will only be that particular function.
Built-in commands of Bash shell can be overridden using functions.

>>Example:

#!/bin/bash  
#Setting up a return status for a function  
  
print_it () {  
    echo Hello $1  
    return 5  
}  
  
print_it User  
print_it Reader  
echo The previous function returned a value of $?  