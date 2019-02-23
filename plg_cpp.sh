#!/bin/sh

echo "\nplagiarism check for COSC3360 -Operating Systems Spring 2019"
echo "-------------------------------------------------------------\n"
declare -a arr=()
declare -i count
for filename in *.cpp;
do
	arr+=("${filename}")
	#./sim_c -p ${filename} ${filename}++
	#./sim_c -p ${arr[counter]} ${arr[++counter]}
	#counter++;
done
#declare -p arr
declare -i count=${#arr[@]}
echo "\nCount" ${count} ": Number of Students\n"
#echo "First element" ${arr[count-1]}
#echo "second Element" ${arr[1]}

#./sim_c -p ${arr[count-1]} ${arr[1]}

for ((i=0; i<${count} ; i+=1 ));
	do
		for((j=i+1; j<${count} ; j+=1 ));
			do 
				echo "\n******** ---- SCAN BEGINS--- ******"
				./sim_c++ -p ${arr[i]} ${arr[j]}
                echo "\n******* ---SCAN COMPLETES--- *******\n"
#echo "Scan" ${i} "Complete"
	        done

	done
exit