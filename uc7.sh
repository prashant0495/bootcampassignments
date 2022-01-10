

a=1
b=2
c=3
echo "Three input is :$a $b $c "
d1=$((a+b*c))
echo "compute is a+b*c :$d1 "
d2=$((a*b+c))
echo "compute is a*b+c : $d2 "
d3=$((c+a/b))
echo "compute is c+a/b :$d3"
d4=$((a%b+c))
echo "compute is a%b+c :$d4"

declare -A compute
compute[d]="123"
compute[d1]="$d1"
compute[d2]="$d2"
compute[d3]="$d3"
compute[d4]="$d4"

echo "${compute[@]}"


echo compute has ${#compute[@]} elements

echo "*******ascending odrer*********"
numbers=(7 5 3 4)

for (( i=0 ; i < ${#numbers[@]}; i++ )) 
do
    for (( j=0 ; j < ${#numbers[@]}; j++ )) 
    do
      if [[ ${numbers[$j]} -gt  ${numbers[$i]} ]]
      then
        tmp=${numbers[$i]}
        numbers[$i]=${numbers[$j]}
        numbers[$j]=${tmp}
      fi
    done
done

for n in "${numbers[@]}"
do
    echo "$n"
done

echo "*******decending  odrer*********"

numbers=(7 5 3 4)

for (( i=0 ; i < ${#numbers[@]}; i++ )) 
do
    for (( j=0 ; j < ${#numbers[@]}; j++ )) 
    do
      if [[ ${numbers[$j]} -lt  ${numbers[$i]} ]]
      then
        tmp=${numbers[$i]}
        numbers[$i]=${numbers[$j]}
        numbers[$j]=${tmp}
      fi
    done
done

for n in "${numbers[@]}"
do
    echo "$n"
done





