#!/bin/bash
today=$(date '+%Y-%m-%d')
file=$1
file_backup=$2
mkdir $today
cd $today
cp $file $file_backup
