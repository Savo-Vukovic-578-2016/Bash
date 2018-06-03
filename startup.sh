#!/bin/bash


n=$(ls | wc -l)
list=$(ls ./Music)
i=0
if [[ n -gt 0 ]];then
	for i in ${list[*]};do
		mpg123 -q "/home/savo/Music/$i"
		sleep 5;

	done
else
	echo "File is empty"
fi
#crontab -e 
#@reboot /home/savo/startup.sh
