#!/usr/bin/env python

sum=0.0
i=0
try:
	while 1:
		x = input()
		sum=sum+x
		#print "%f" %x
		i=i+1
except EOFError:
	avg=(sum*1.0)/i
	print avg

