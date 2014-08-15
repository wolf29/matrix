#!/bin/bash
# 
#
#  matrix.sh
#
#  Description: This is a password creator for Linux BASH Shell. 
#	It creates several different passwords from a small amount of input
#	There is a readable password generator and several hashes based 
#	upon that.  
#  
#  Copyright 2014 Wolf Halton <wolf@sourcefreedom.com>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
# 
echo "Welcome to the password matrix"
echo "------------------------------"
#echo "Bash version ${BASH_VERSION}..."
wits=99
while [ $wits -ne 0 ]
	do
		echo "You can shake the box and see how many passwords fall out," 
		echo "or "
		echo "throw the box away and say 'good riddance.'"
		echo ""
		echo "Shake the box?"
		echo "Enter a '1' for yes and a '0' to throw it away"
		read pits
		if [ $pits -eq '1' ] 
			then
				echo ""
				echo "Enter the number of bits"
				read bits
				echo "Enter the number of passwords you want"
				read its
				if [ $bits -lt 24 ]
					then 
						bits=24
				fi
				#echo $bits
				if [ $its -lt 1 ]
					then 
						its=1
				fi
				echo $its
				if [ $wits -ne 0 ]
					then
						echo "Here are your passwords"
						echo "--"
						#for i in $(seq 1 $its)
						for ((i=1;i<=its;++i))
							do
								#dd bs=32 count=1 if=/dev/random | base64
								pwqgen random=$bits | base64
								pwqgen random=$bits 
								pwqgen random=$bits | base64  | base64
								cuff=$RANDOM  
								scuff=$RANDOM 
								let "guff=$cuff*$scuff"
								echo $cuff $scuff  | base64
								echo $guff | base64
								echo $guff | base64 |base64
								#echo $guff | openssl enc -base64
								
							done
				fi
		else 
			wits=0 
		fi
	done
