#!/bin/sh

# Default PARAMETERS
amount=1
length=8
filename=/tmp/passlist.txt

# Print the help screen
printhelp()
{
	echo -e 'pwgen 1.0 - by m00ny\n\n'
	echo -e 'EXAMPLES:'
	echo -e "\tgenerate 1 password with a length of 8:\n\t\033[1;34m $0 \033[0m"
	echo -e "\tgenerate 10 passwords with a length of 8:\n\t\033[1;34m $0 -l 8 -a 10 -o passlist.txt \033[0m\n"
	echo -e 'PARAMETERS:'
	echo -e '\t-h \t shows this screen\n'
	echo -e '\t\t ### required: ###'
	echo -e '\t-l \t defines the length of the generated passord(s) \t\t- default = 8'
	echo -e '\t-a \t defines the amount of generated passwords \t\t\t- default = 1\n'
	echo -e '\t\t ### optional: ###'
	echo -e '\t-o \t defines the file the password(s) will be saved in \t- default = none'
	echo -e '\t-c \t defines the charset to use //NOT IMPLEMENTED YET'
	echo -e "\t $0 -update \t updates the programm and installs it to /usr/sbin/"
	exit 0
}

# write the generated passwords to console
printpw()
{
	cat /tmp/passlist.txt
}

#update script
update()
{
	git clone https://github.com/m00nyONE/PasswordGen /tmp
	chmod +x /tmp/PasswordGen/pwgen
	echo -e "\033[1;34m pwgen will be installed to /usr/sbin \033[0m"
	sudo chown root:root /tmp/PasswordGen/pwgen
	sudo cp -rf /tmp/PasswordGen/pwgen /usr/sbin/pwgen
	rm -rf /tmp/PasswordGen
	echo "pwgen successfully updated!"
	exit 0
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

# check for first option & its parameter
case $1 in
	"-h") printhelp ;;
	"-o") filename=$2 ;;
	"-a") amount=$2 ;;
	"-l") length=$2 ;;
	"-c") echo "not implemented yet!" ;;
	"-update") update ;;
	*) printhelp ;;
esac

# check second option & its parameter
case $3 in
	"-h") printhelp ;;
	"-o") filename=$4 ;;
	"-a") amount=$4 ;;
	"-l") length=$4 ;;
	"-c") echo "not implemented yet!" ;;
	"-update") update ;;
	*) printhelp ;;
esac

# check if required parameters are set
if [ $# -lt 4 ]
then printhelp
fi

# check third option & its parameter - if not given, generate the passwords
case $5 in
	"-h") printhelp ;;
	"-o") filename=$6 ;;
	"-a") amount=$6 ;;
	"-l") length=$6 ;;
	"-c") echo "not implemented yet!" ;;
	"-update") update ;;
	*) passgen $length $amount ;;
esac

passgen $length $amount
