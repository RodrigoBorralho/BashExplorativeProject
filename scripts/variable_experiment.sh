echo -e '\nrunning variable_experiment.sh...'

echo -e "\nrunnning parameter extension {}"

student="SARAH"
echo "Hello ${student,}" # 1st letter LowerCase
echo "Hello ${student^}" # 1st letter UpperCase
echo "Hello ${student,,}" # Full LowerCase

echo -e "\nrunning command substitution ()"

DATE=$(date +'%Y%m%d')
echo "Date: $DATE"

echo -e "\nrunning arithmetic expression (( ))"

x=5
y=2

echo "$(($x+$y))"
echo "$((6/2))"

echo "scale=2; ((5/2))" | bc
echo "scale=2; 5/2" | bc #bc does not need (()) because it just uses it in an arithmentic sense, like grouping operations.

echo "scale=2; $x/$y" | bc

echo -e "\nrunning brace expansion {}"

echo '{1,2,3,4}' "->" {1,2,3,4}
echo '{1..4}' "->" {1..4}
echo '{1..10..2}' "->" {1..10..2}
echo 'pod{1..4}' "->" pod{1..4}




echo Done
