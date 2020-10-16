#!/bin/bash
{
	if [ -f $1 ];
	then
		bash $1
	else
		echo $1
		echo "does not exist"
	fi
}
