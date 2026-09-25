
# Exit Codes

display exit code of last command:
- echo $?

0 - command executed sucessfully
!0 - command error

1 and 2 - failure, but does not tell which failure 

```bash
#!/bin/bash   

directory=/notexist   
// exit code is 0 here

if [ -d $directory ]
then
    // exit code is 1 here
    echo "The directory $directory exists."
    // exit code is 0 here
else
    echo "The directory $directory doesn't exist."
fi   

echo "The exit code for this script run is $?" 
```