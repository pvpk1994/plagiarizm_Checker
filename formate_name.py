##############################################
# Author: Guangli Dai @ UH
# Usage: run this file in the unzipped directory download from the BlackBoard
#        All files with the suffix (now .c or .cpp) will be renamed in FirstName_LastName.c or FirstName_LastName.cpp
#        Subdirectories are ignored. Zip files has to be unzipped manually to have files included in the final formatted directory.
# Last modified: Oct 23, 2019
##############################################

import os
import subprocess
import re

#settings
file_path = "./"
suffix = ".c" #all target files to be renamed include this suffix
target_dir = "formated_files"

id_full_name_map = {} #a dictionary used to store all id-name mappings
subprocess.call(['mkdir',target_dir])
target_files = []

name_list = os.listdir(file_path)
for name in name_list:
	if name.find('.txt') != -1:
		#read the file in
		with open(name, 'r') as f:
			#read in the first line
			first_line = f.readline()
			if first_line.find('Name')==-1:
				continue
			first_line = re.split(r'[ ,\n,(,)]\s*', first_line)
			if len(first_line)<5:
				continue
			first_name = first_line[1]
			last_name = first_line[2]
			cougar_id = first_line[len(first_line) - 2]
			full_name = first_name+'_'+last_name
			id_full_name_map[cougar_id] = full_name
	if name.find(suffix) != -1:
		target_files.append(name)

for name in target_files:
	name_parser = name.split('_')
	suffix_index = name.find('.')
	suffix_now = str(name[suffix_index:])
	id_now = name_parser[1]
	subprocess.call(['cp',file_path+'/'+name, file_path+'/'+target_dir+'/'+id_full_name_map[id_now]+suffix_now])
