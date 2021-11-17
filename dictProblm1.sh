#!/bin/bash -x

#1.die Roll
number=$((RANDOM%6+1))


#2.Repeat die Roll
read -p "Enter the number you want to repeat die roll:" n

for ((i=0; i<$n; i++))
do
	number[i]=$((RANDOM%6+1))
done
echo ${number[@]}


#3.result in dictionary
echo ${!number[@]}


#any one number reached 10 times
l1=1
l2=1
l3=1
l4=1
l5=1
l6=1
while [[ $l1 -lt 10 && $l2 -lt 10 && $l3 -lt 10 && $l4 -lt 10 && $l5 -lt 10 && $l6 -lt 10 ]]
do
	number=$((RANDOM%6+1))
	if [ $number -eq 1 ]
	then
		((l1++))
	elif [ $number -eq 2 ]
	then
		((l2++))
	elif [ $number -eq 3 ]
        then
                ((l3++))
	elif [ $number -eq 4 ]
        then
                ((l4++))
	elif [ $number -eq 5 ]
        then
                ((l5++))
	elif [ $number -eq 6 ]
        then
                ((l6++))
	fi
done
echo $l1 $l2 $l3 $l4 $l5 $l6


#number that reached maximum and minimum times
count=0
dice[((count++))]=$l1
dice[((count++))]=$l2
dice[((count++))]=$l3
dice[((count++))]=$l4
dice[((count++))]=$l5
dice[((count++))]=$l6

max=${dice[0]}
min=${dice[0]}
 
for i in ${dice[@]}
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done

echo $max
echo $min
