#!/bin/bash

if [[ ! -e ~/Downloads/Files_jpg  ]];then
    mkdir ~/Downloads/Files_jpg
fi

if [[ ! -e ~/Downloads/Files ]];then
    mkdir ~/Downloads/Files
fi

if [[ ! -e ~/Downloads/Files_txt ]];then
    mkdir ~/Downloads/Files_txt
fi

#ls ~/Dowloads > creator.txt
#files=$(cat creator.txt)

files=$(ls ~/Downloads/)

for i in ${files[*]};
do
    if [[ $i =~ \.jpg|png$ ]];then
        if [[ ! $i = Files_jpg ]] && [[ ! $i = Files ]] && [[ ! $i = Files_txt ]];then
            mv ~/Downloads/$i ~/Downloads/Files_jpg
        fi
    elif [[ $i =~ \.txt ]];then
        if [[ ! $i = Files_jpg ]] && [[ ! $i = Files ]] && [[ ! $i = Files_txt ]];then
            mv ~/Downloads/$i ~/Downloads/Files_txt
        fi
    else
        if [[ ! $i = Files_jpg ]] && [[ ! $i = Files ]] && [[ ! $i = Files_txt ]];then
            mv ~/Downloads/$i ~/Downloads/Files 
        fi
    fi
        
done
