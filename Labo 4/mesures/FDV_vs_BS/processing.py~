#!/usr/bin/python
# -*- coding: utf-8 -*-
from sys import argv
from os import listdir
from os.path import join

def process_line(line):
	#print line[0:3]
	if line[0:3]==",,,":
		return line[3:-2]+"\n"
	else:
		return "#"+line
	
def process_file(name):
	file=open(name,"r")
	output=(open(name+".glp","w"))
	for line in file:
		#print line
		output.write(process_line(line))
	output.close()
	
def process_dir(dir):
	list=listdir(dir)
	for i in list:
		print "dossier :", join(dir,i)
		if "all" in i:
			files=listdir(join(dir,i))
			print join(dir,i)
			for j in files:
				if (".csv" in j) and (not ".csv.glp" in j):
					#
					print "Process :",join(dir,i,j)
					process_file(join(dir,i,j))
					print "Done"


	
if __name__=="__main__":
	#process_file("./all0000/f0000ch1.csv")
	#process_file(argv[1])
	process_dir(argv[1])
	print "done"