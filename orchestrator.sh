#!/bin/bash

echo -e "\nAdding bash scripts folder into path..."
export PATH="$PATH:/mnt/c/Users/rodri/Desktop/projects/BashExplorativeProject/BashExplorativeProject/scripts"
export PATH="$PATH:/mnt/c/Users/rodri/Desktop/projects/BashExplorativeProject/BashExplorativeProject"

echo -e "\n $PATH"

echo -e "Updating permissions..."

bash variable_experiment.sh
bash if_statements.sh
bash exitcodes.sh

echo Done
