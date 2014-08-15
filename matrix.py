#!/usr/bin/env python
# -*- coding: utf-8 -*-
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
import os, functools, random


def main():
	bing="chew"
	while bing != "Swallow":
		print("Do you want to play? ")
		choice = raw_input("Y for yes and N for no => ")
		if choice == 'Y':
			
			waste = input("Enter how many you want  =>  ")
	
	
			gibberish = os.path.join(reduce(lambda path, _: os.path.dirname(path), \
			range(3), __file__), 'bin', 'gibberish')
			print(gibberish)
	

			for i in xrange(waste):
				print '%04.3f' % random.uniform(1, 10099)
		elif choice == 'N':
			bing = 'Swallow'
		else: 
			print("Did you mean to print 'Y' or 'N'?")
			
	return 0




if __name__ == '__main__':
	main()

