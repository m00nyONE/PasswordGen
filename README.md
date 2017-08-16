# PasswordGen
A simple & lightweight bash script to generate secure passwords in a given length and/or output them to a file.
It uses the urandom device in your linux kernel to generate the passwords. It just greps characters out and joins them together.


EXAMPLES:

generate 1 password with a length of 8:
	./pwgen.sh

generate 10 passwords with a length of 8:
	./pwgen.sh -l 8 -a 10 -o passlist.txt

PARAMETERS:

	-h 	 shows this screen

		 ### required: ###
	-l 	 defines the length of the generated passord(s) 		- default = 8
	-a 	 defines the amount of generated passwords 			- default = 1

		 ### optional: ###
	-o 	 defines the output file the passwords will be saved in 	- default = none
	-c 	 defines the charset to use //NOT IMPLEMENTED YET








Project by m00ny
