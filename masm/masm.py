#Masm complie script
#https://github.com/b3mb4m/Shellcode/blob/master/Auxiliary/masm/complie.py


import os
import sys

if len(sys.argv) < 2:
	sys.exit("python complie.py [FILENAME]")

try:
	_= "ml.exe /c /coff %s" % sys.argv[1]
	__= "link.exe /SUBSYSTEM:WINDOWS %s" % (sys.argv[1].split(".")[0]+".obj")

	os.system(_)
	os.system(__)

	if os.path.isfile(sys.argv[1].split(".")[0]+".exe"):
		print "\nYour exe file ready !\n"
		print sys.argv[1]
		print sys.argv[1].split(".")[0]+".exe"
	os.remove(sys.argv[1].split(".")[0]+".obj")

except Exception as error:
	sys.exit(error)	