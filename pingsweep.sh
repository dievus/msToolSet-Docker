#!/bin/bash

#Greeting#

greeting() {
	
	tput setaf 2; tput bold;
	echo -e
	echo -e 	"--------------------"
	echo -e 	"-    Super Duper   -"
	echo -e     	"-  Ping Sweep Tool -"
	echo -e 	"--------------------"
	echo -e
	echo -e		"Like Heath's, but better"	
	echo -e		  "by The Mayor/Dievus"; tput sgr0;
	echo -e
}

ping_sweep(){
tput bold; echo -en "Please Enter YOUR IP address."; tput sgr0;
	echo -e
	read name
	if [ "$name" == "" ]
		then
		tput setaf 1; tput bold; echo -e "You forgot to enter a target!"; tput sgr0;
		tput setaf 1; tput bold; echo -e "Example - 192.168.1.1 or cybersecpadawan.com"; tput sgr0;
	exit 0
fi		
echo -e
subnet="${name%.*}"
tput setaf 2; tput bold; echo -e "Running a Quick IP sweep to determine live hosts on subnet."; tput sgr0;
echo -e
for ip in `seq 1 254`; do
>&2 | ping -c 1 $subnet.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" | sort -u | tee -a livehosts.on.$subnet.txt &
done
}

greeting
ping_sweep
exit 0
