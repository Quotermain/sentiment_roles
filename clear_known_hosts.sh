#!/usr/bin/bash

known_hosts=(
	"quoterback.ru" "192.168.10.20" "192.168.10.21" 
	"192.168.10.30" "192.168.10.31" "192.168.10.40"
)

for host in ${known_hosts[@]}
do
	ssh-keygen -f "/home/quotermain/.ssh/known_hosts" -R $host
done
