#!/bin/bash
echo -e '\nrunning if_statement.sh...'

cpu_usage=80

if [ $cpu_usage -gt 70 ]
then
    echo -e "\nCPU percentage above 70ºC"
else
    echo -e "\nCPU percentage equal or lower than 70ºC"
fi

if [  -f variable_experiment.sh ]
then
    echo -e "\nvariable_experiment exists"
else
    echo -e "\nvariable_experiment does not exist"
fi