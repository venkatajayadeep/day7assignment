while read numbers
do
    arr=("${arr[@]}" $numbers)
done

a=${arr[@]}
n=${#arr[@]}
#echo $n
#echo $a

sum=0

for((i=0; i<=2; i++));
do

sum=$((sum+arr[i]))

done

if [[ $sum -eq 0 ]];
then

 	echo "adds to zero"
else 
	echo "not adds to zero"
fi
