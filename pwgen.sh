#!/bin/sh

# Default PARAMETERS
amount=1
length=8
filename=/tmp/passlist.txt

# Print the help screen
printhelp()
{
	echo -e "$0 will generate 1 password with the length of 8"
	echo -e "EXAMPLES:"
	echo -e "\tgenerate 1 password with a length of 8:\n\t$0 "
	echo -e "\tgenerate 10 passwords with a length of 8:\n\t$0 -l 8 -a 10 -o passlist.txt\n"
	echo -e "PARAMETERS:"
	echo -e '\t-h \t shows this screen\n'
	echo -e '\t\t ### required: ###'
	echo -e '\t-l \t defines the length of the generated passord(s) \t\t- default = 8'
	echo -e '\t-a \t defines the amount of generated passwords \t\t\t- default = 1\n'
	echo -e '\t\t ### optional: ###'
	echo -e '\t-o \t defines the file the password(s) will be saved in \t- default = none'
	echo -e '\t-c \t defines the charset to use //NOT IMPLEMENTED YET'
	exit 0
}

# write the generated passwords to console
printpw()
{
	cat /tmp/passlist.txt
}

# main password generation function
passgen()
{
	for i in `seq 1 $2`
	do
		strings /dev/urandom|grep -o '[[:alnum:]=@!#+*~<>|\"§$%&/(),.;:_-]'|head -n $1|tr -d '\n'
		echo ""
	done > /tmp/passlist.txt

	printpw

	if [ "$filename" != "/tmp/passlist.txt" ]
	then cp /tmp/passlist.txt $filename
	fi

	rm -rf /tmp/passlist.txt

	exit 0
}

# default generation without parameters
if [ $# -eq 0 ]
then passgen $length $amount
fi

# check if required parameters are set
if [ $# -lt 4 ]
then printhelp
fi

# check for first option & its parameter
case $1 in
	"-h") printhelp ;;
	"-o") filename=$2 ;;
	"-a") amount=$2 ;;
	"-l") length=$2 ;;
	"-c") echo "not implemented yet!" ;;
	*) printhelp ;;
esac

# check second option & its parameter
case $3 in
	"-h") printhelp ;;
	"-o") filename=$4 ;;
	"-a") amount=$4 ;;
	"-l") length=$4 ;;
	"-c") echo "not implemented yet!" ;;
	*) printhelp ;;
esac

# check third option & its parameter - if not given, generate the passwords
case $5 in
	"-h") printhelp ;;
	"-o") filename=$6 ;;
	"-a") amount=$6 ;;
	"-l") length=$6 ;;
	"-c") echo "not implemented yet!" ;;
	*) passgen $length $amount ;;
esac

passgen $length $amount
