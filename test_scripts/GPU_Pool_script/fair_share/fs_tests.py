#!/usr/bin/python

import os

os.environ['LD_PRELOAD'] = "/home/dipanjans/GPU_Pool_raghav/kidron_fs/interposer/libci.so"
os.environ['TIMEFORMAT'] = '%E'

"""
apps=open("section1")
for line in apps:
	for i in range(0,5):
		print line
		os.system(line)
		raw_input()
apps.close()
"""

start = int(raw_input('start from : '))
first_iter = int(raw_input('shiva starts from : '))

app_list = []
apps=open("section1")
for line in apps:
	app_list.append(line)
apps.close()

for i in range((start - 1), len(app_list)):
	for j in range((first_iter - 1), 5):
		print app_list[i]
		os.system(app_list[i])
		raw_input()
	first_iter = 1
