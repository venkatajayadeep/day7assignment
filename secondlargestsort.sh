arr=()
for((i=1; i<=10; i++))
do
x=$((100 + RANDOM%809))
arr+=($x) #arr=arr+$x
done

printf '%s\n' "${arr[@]}" | sort -n 

echo "The Maximum and Second Maximum number in arrauy are :"
printf '%s\n' "${arr[@]}" | sort -r | head -2

echo "The Manimum and Second Manimum number in arrauy are :"
printf '%s\n' "${arr[@]}" | sort -n | head -2 
