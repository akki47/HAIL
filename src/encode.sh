

#This script encodes the file provided in the argument into Primary + Secondary servers

rm -r Coding/

FILE=$1
K=$2
M=$3

if [ $# -ne 3 ]

then
	echo "Usage: ./encode.sh [filename] [Number of Primary Servers] [Number of Secondary Servers]";

else
	#Apply erasure coding to the file and divide into k + m parts
	encoder $FILE $K $M reed_sol_van 32 1024 0;
	
	#Apply CPOR to the k primary server parts
	for (( number=1; number<=$K; number++ ))
	do  
		./cpor-tag-file ./Coding/Ubuntu_k$number.ogg;
	done
	
	#Apply CPOR to the m secondary server parts
	for (( number=1; number<=$M; number++ ))
	do  
		./cpor-tag-file ./Coding/Ubuntu_m$number.ogg;
	done
fi



