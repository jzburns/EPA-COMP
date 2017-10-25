#!/bin/bash

str=`aws ec2 describe-instances --instance-ids $1 | grep unning | wc -l`

if [ $str -eq 0 ] ; then
	echo "Instance $1 is not running"
else
	echo "Instance $1 is running"
fi
