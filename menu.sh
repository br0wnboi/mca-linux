#!/bin/bash

function sum {
	echo ""
	echo "Enter a number: "
read num
i=1
sum=0
while [ $i -le $num ]
do
sum=`expr $sum + $i`
i=`expr $i + 1`
done
echo "The sum of first $num numbers is: $sum"
}


function great3 {
echo ""
echo "Enter 1st Number"
read num1
echo "Enter 2nd Number"
read num2
echo "Enter 3rd Number"
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "Greatest Number is "$num1
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "Greatest Number is "$num2
else
    echo "Greatest Number is "$num3
fi
}

function checkprime {
echo ""
echo "enter number"
read num
function prime
{
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
}
r=`prime $number`
echo "$r"
}

function menu {
	clear
	echo
	echo -e "\t\t\tChoose your operation from below\n"
	echo -e "\t1. Sum of 3 numbers"
	echo -e "\t2. Greatest of 3 numbers"
	echo -e "\t3. Check for prime"
	echo -e "\t0. Exit Menu\n\n"
	echo -en "\t\tEnter an Option: "
	read -n 1 option
}

while [ 1 ]
do
	menu
	case $option in
	0)
	break ;;
	1)
	sum ;;

	2)
	great3 ;;

	3)
	checkprime ;;

	*)
	clear
	echo "Sorry, wrong selection";;
	esac
	echo -en "\n\n\t\t\tHit any key to continue"
	read -n 1 line
done
clear
