#!/bin/bash
mainpath="/mnt/c/Users/rodri/Desktop/projects/BashExplorativeProject/BashExplorativeProject"

echo -e "\nAdding bash scripts folder into path..."
export PATH="$PATH:$mainpath/scripts"
export PATH="$PATH:$mainpath"
echo -e "\n $PATH"

# if there are additional arguments use the specified file
if [ $1 ]
then 
    filenames="$1.sh"
else
    # else use the config.json specified files
    if [ -f config/config.json ]
    then
        filenames=$(cat config/config.json | underscore select '.script')
    else
        filenames=$(ls scripts/)
    fi

fi

# run files
for file in $filenames;
do
    bash "$file" $mainpath
done


echo Done
