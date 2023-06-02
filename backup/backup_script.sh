#!/bin/bash
today=$(date '+%Y-%m-%d')
file=$1
backup_file=$2
user_name=$3
path=/home/$user_name/backup
exec >> $path/$today/backup.log 2>&1
cd $path
mkdir $today
cd $today
cp -r $file $backup_file
