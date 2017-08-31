# PasswordGen
A simple & lightweight bash script to generate secure passwords in a given length and/or output them to a file.
It uses the urandom device in your linux kernel to generate the passwords. It just greps characters out and joins them together.


# It also works as a Portable script, you don't need to install it before using

Download the script from the Browser directly or use git

	mkdir /tmp/pwgen
	git clone https://github.com/m00nyONE/PasswordGen.git /tmp/pwgen/
	cd /tmp/pwgen/PasswordGen
	chmod +x pwgen
	./pwgen

# Installation:
Dependencies: You need the git package for the updater/installer to work

	Debian/Ubuntu: 	apt-get install git
	Arch Linux:	pacman -S git
	Fedora: 	dnf -y install git
	Redhat:		yum install git
	Suse:		zypper in git-core

If you choose to install pwgen to your system, just type ./pwgen -update
It will download the latest source from GitHub and install itself into /usr/sbin
WARNING!! If you already have a programm called pwgen, it will be OVERWRITTEN! check before installing

# Usage
EXAMPLES:

generate 1 password with a length of 8:
	
	pwgen

generate 10 passwords with a length of 8:
	
	pwgen -l 8 -a 10 -o passlist.txt

PARAMETERS:

	-h 	 shows help screen

		 ### required: ###
	-l 	 defines the length of the generated passord(s) 		- default = 8
	-a 	 defines the amount of generated passwords 			- default = 1

		 ### optional: ###
	-o 	 defines the output file the passwords will be saved in 	- default = none
	-c 	 defines the charset to use //NOT IMPLEMENTED YET
	-update	 Updates and Installs pwgen to /usr/sbin/
	-install Same as -update
	-rand 	 the length will be generated automatically between 8-16 chars
	-inf 	 this will infinitly generate passwords - use with -o ! otherwise, the passwords will be lost
	





							Project by m00ny
