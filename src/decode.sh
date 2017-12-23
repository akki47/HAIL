

#This script decodes the file provided 

rm -r Coding/

FILE=$1


if [ $# -ne 1 ]
then
	echo "Usage: ./decode.sh [filename]";
else
	#Apply erasure coding to the file and divide into k + m parts
	decoder $FILE;
fi



