import glob
import os

fid = open("BACE_ID.txt")
lines= fid.readlines()
fid.close()

for i in glob.glob("ligands/*"):
   if "BACE" not in i:
     no=int( i.split("/")[1] )
     print(no, lines[no-1][:-1] )
     os.system("mv %s ligands/%s" %(i, lines[no-1][:-1]) )
     
