#!/bin/bash

if [[ "$EUID" -ne 0 ]] ; then echo "Are you root...?" ; exit ; fi

echo "Enter new user(s): "
read USER_NAME
echo "Create these users? type y/n: $USER_NAME"
read ANSWER 
if [[ $ANSWER != 'y' ]] ; then
	exit
else
	for i in ${USER_NAME} ; do useradd -m ${i} ; done
fi
