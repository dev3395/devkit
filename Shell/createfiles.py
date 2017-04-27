#!/usr/bin/env python3

# To run:
# Set chmod a+x
# Run with python createfiles.py in the folder (not ./)
    
import os
#--- set your code directory below
# dr = "/users/dimitri/Test/"
dr = "/Users/dimitri/Github/devkit/Shell/"
#--- set the desired (base) name extension and shebang below (leave it ""if you don't want an automatically set shebang)
name_initial = "Test File "
extension = ".txt"

#---

existing = os.listdir(dr)
n = 5

for filecount in range(1,2):
	while True:
		file = dr+"/"+name_initial+str(n).zfill(4)+extension
		if os.path.exists(file):
			n = n+1
		else: 	
			with open(file, "wt") as out:
				for x in range(1, 11):
					mytext = "This is line %d\n" % (x)
					out.write(mytext)
			break