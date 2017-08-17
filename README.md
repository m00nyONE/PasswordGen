# PasswordGen
A simple & lightweight bash script to generate secure passwords in a given length and/or output them to a file.
It uses the urandom device in your linux kernel to generate the passwords. It just greps characters out and joins them together.


# It also works as a Portable script, you don't need to install it before using



# Installation:
If you choose to install pwgen to your system, just type ./pwgen -update
It will download the latest source from GitHub and install itself into /usr/sbin
WARNING!! If you allready have a programm called pwgen, it will be OVERWRITTEN! check before installing

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







							Project by m00ny
