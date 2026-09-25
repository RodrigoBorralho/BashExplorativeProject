echo -e '\nrunning exitcodes.sh...'


#!/bin/bash   

directory=/notexist   
# exit code is 0 here

if [ -d $directory ]
then 
    echo "The directory $directory exists."
else
    # exit code is 1 here
    echo $?

    echo "The directory $directory doesn't exist."

    # exit code is 0 here
    echo $?
    
fi   

echo "The exit code for this script run is $?" 


if [ -d $directory ]
then 
    echo "The directory $directory exists."
    exit 0
else

    echo "The directory $directory doesn't exist."
    exit 1    
fi   

