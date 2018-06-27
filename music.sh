#!/bin/bash

#alias stopM='touch /home/user/Music/.stop
#alias randM='touch /home/user/Music/.random

user=$(whoami)
location=/home/$user/Music 
numb=$(ls $location | wc -l)
list=($(ls $location))

i=0
while [[ true ]];do

	
	if [[ -e $location/.stop ]];then
		break
	elif [[ -e $location/.random ]];then
		echo $numb
		echo $(($RANDOM % $numb))
		mpg123 -q $location/${list[$(($RANDOM % $numb))]}
	else
		mpg123 -q $location/${list[$((i++))]}
	fi
done

if [[ -e $location/.stop ]];then
	rm $location/.stop
fi

if [[ -e $location/.random ]];then
	rm $location/.random
fi

