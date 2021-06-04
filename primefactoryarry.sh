arr=()
read -p "Enter the Number: " n

for (( i = 1; i <= $n; i++ )); do
	tmp=$(($n%$i))
	if [[ $tmp -eq 0 ]]; then
		arr+=($i)
		n=$((n/$i))
	fi
done

echo "Array of prime factor of number is: "${arr[@]}
