#!/bin/sh

echo "plagiarism check"

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
echo "Count" ${count}
#echo "First element" ${arr[count-1]}
#echo "second Element" ${arr[1]}

#./sim_c -p ${arr[count-1]} ${arr[1]}

for ((i=0; i<${count} ; i+=1 ));
	do
		for((j=i+1; j<${count} ; j+=1 ));
			do 
				./sim_c -p ${arr[i]} ${arr[j]}
                echo "\n******* ---SCAN COMPLETE--- *******"
#echo "Scan" ${i} "Complete"
	        done

	done
exit
