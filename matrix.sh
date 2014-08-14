#!/bin/bash
# pass-gen
echo "Welcome to the password matrix"
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
								echo $guff | openssl enc -base64
								
							done
				fi
		else 
			wits=0 
		fi
	done
