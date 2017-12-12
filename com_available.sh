#!/bin/bash
# Checker script to find commands not-installed for server monitoring
echo 'Available commands are as followings...'
for command1 in 'top' 'iostat' 'mpstat' 'vmstat' 'vm_stat' 'sar' 'ps' 'uptime' 'w' 'free' 'swapon' 'netstat' 'pstree' 'lsof';do
	Dirname=$(which $command1)
	if echo $Dirname | grep '/'$command1 >/dev/null 2>&1; then
    	echo $command1
	else
    	ngarray+=$command1'\n'
	fi
done
echo '\nNot-installed commands are as followings...'
echo ${ngarray[@]}