#!/bin/bash
echo -e '\nrunning loop.sh...'

number=1
maxnumber=10

echo -e "\nwhile loop.."
while [ $number -le 10 ]
do
    echo $number
    number=$(( $number +1 ))
done

echo -e "\nfor loop.."
for ((i=0; i<=maxnumber; i++))
do
    echo $i
done

echo -e "\ncase.."

numbercase=1
case $numbercase in
    1) echo "number is 1";;
    2) echo "number is 2";;
    *) echo "number is something else";;
esac