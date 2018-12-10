#! /bin/bash
#cars.sh
#Connor Cowher

x=1
while [ $x -eq 1 ]
do
	echo "Inventory"
	echo "Select an option"
	echo "(1) Enter a car"
	echo "(2) List of cars"
	echo "(3) Exit"
	read input
	
	case "$input" in
		"1") clear ; echo "Enter year of car " ; read year ; echo "Enter type of car " ; read type; echo "Enter model of car " ; read model ; echo "$year:$type:$model" >> car_list.txt; clear ;;
		"2") clear ; sort -n car_list.txt ; echo -e "\n\n" ;;
		"3") clear ; echo "See ya" ; x=0 ;;
	esac
done
