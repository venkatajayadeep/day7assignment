#! /bin/bash -x

echo start
for ((i = 0; i < 10; i++));
do
array[i]=$(($RANDOM % 899 + 100))
done
echo "${!array[@]}"
echo "${array[@]}"


largest=${array[0]}
secondGreatest="unset"

for((i=1; i < ${#array[@]}; i++))
do
if [[ ${array[i]} > $largest ]]
then
	secondGreatest=$largest
	largest=${array[i]}
elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
then
	secondGreatest=${array[i]}
fi
done

echo "secondGreatest = $secondGreatest"
smallest=${array[0]}
secondsmallest='unset'

for((i=1; i < ${#array[@]}; i++))
do
if [[ ${array[i]} < $smallest ]]
then
	secondsmallest=$smallest
	smallest=${array[i]}
elif (( ${array[i]} != $smallest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${array[i]} < $secondsmallest ]]; }
then
	secondsmallest=${array[i]}
fi
done

echo "secondsmallest = $secondsmallest"

