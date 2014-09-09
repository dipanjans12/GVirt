#!/bin/bash

RANDOM=71;
i=1
while [ $i -le 2000 ]
do
	echo $RANDOM >> stream3_2000
	(( i++ ))
done
