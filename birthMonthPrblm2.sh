#!/bin/bash

read -p "Enter the year:" year
if [ $year -eq 1992 ] || [ $year -eq 1993 ]
then
	for ((i=0; i<20; i++))
	do
		read -p "Enter the BirthMonth:" month
		birthMonth[i]=$month
	done
else
	echo "Please enter the year 1992 or 1993 only!!!"
fi
echo ${birthMonth[@]}

jan=0
feb=0
march=0
april=0
may=0
june=0
july=0
august=0
sept=0
oct=0
nov=0
dec=0

for ((i=0; i<${#birthMonth[@]}; i++))
do
	if [ "${birthMonth[i]}" == "jan" ]
	then
		((jan++))
	elif [ "${birthMonth[i]}" == "feb" ]
        then
                ((feb++))
	elif [ "${birthMonth[i]}" == "march" ]
        then
                ((march++))
	elif [ "${birthMonth[i]}" == "april" ]
        then
                ((april++))
	elif [ "${birthMonth[i]}" == "may" ]
        then
                ((may++))
	elif [ "${birthMonth[i]}" == "june" ]
        then
                ((june++))
	elif [ "${birthMonth[i]}" == "july" ]
        then
                ((july++))
	elif [ "${birthMonth[i]}" == "august" ]
        then
                ((august++))
	elif [ "${birthMonth[i]}" == "sept" ]
        then
                ((sept++))
	elif [ "${birthMonth[i]}" == "oct" ]
        then
                ((oct++))
	elif [ "${birthMonth[i]}" == "nov" ]
        then
                ((nov++))
	elif [ "${birthMonth[i]}" == "dec" ]
        then
                ((dec++))
	fi
done

#same birthday month
echo "Individuals having birthdays in month jan:" $jan
echo "Individuals having birthdays in month feb:" $feb
echo "Individuals having birthdays in month march:" $march
echo "Individuals having birthdays in month april:" $april
echo "Individuals having birthdays in month may:" $may
echo "Individuals having birthdays in month june:" $june
echo "Individuals having birthdays in month july:" $july
echo "Individuals having birthdays in month august:" $august
echo "Individuals having birthdays in month sept:" $sept
echo "Individuals having birthdays in month oct:" $oct
echo "Individuals having birthdays in month nov:" $nov
echo "Individuals having birthdays in month dec:" $dec
