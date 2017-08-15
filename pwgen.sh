#!/bin/sh
if [ "$1" == "-h" ]
then 
	echo "usage: $0 password-length amount "
	echo "-o describes the output file but is optional. IT MUST BE AT THE END!"
	exit 0
fi 

if [ $# -lt 2 ]
then
        echo "usage: $0 password-length amount "
	echo "-o describes the output file but is optional. It must be at the end"
	
	else 
		filename=pwlist.txt
		if [ "$3" == "-o" ]
	then 
		filename="$4"
	fi

	length=$1
	amount=$2

for i in `seq 1 $length`; do strings /dev/urandom|grep -o '[[:alnum:]!#+*~<>|"§$%&/(),.;:_-]'|head -n $length|tr -d '\n';echo "";done > "$filename"
fi
