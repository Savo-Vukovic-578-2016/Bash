#!/bin/bash


n=$(ls | wc -l)
list=$(ls ~/Music)
i=0
if [[ n -gt 0 ]];then
	for i in ${list[*]};do
		mpg123 -q ~/Music/$i
		sleep 2;

	done
else
	echo "File is empty"
fi
#crontab -e 
#@reboot /home/savo/startup.sh
