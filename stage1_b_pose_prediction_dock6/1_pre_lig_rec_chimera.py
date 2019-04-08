
# the following script needs to be run from Chimera command line
# command: runscript 1_pre_lig_rec_chimera.py
# Note: paths might need to be changed
# Protocol is based on Dock6 tutorial http://dock.compbio.ucsf.edu/DOCK_6/tutorials/sphere_generation/generating_spheres.htm

import numpy
#import chimera
from chimera import runCommand
import os

os.system('mkdir mol2_charged rec_mol2 rec_noH')

# adding AM1-BCC charges to the ligand
# all ligands except BACE_1, BACE_17-BACE_20 have charge zero
zero=[1,17,18,19,20]

for i in range(1,21):
   runCommand('open lig_mol2_prot/%d.mol2' %i)
   if i in zero:
     charge = 0
   else:
     charge = 1
   runCommand('addcharge nonstd #0 %d method am1' %charge)
   runCommand('write format mol2 #0 mol2_charged/%d_charged.mol2' %i)
   runCommand('close #0')
 
# adding AM1-BCC charges to the protein
for i in range(1,21):
   runCommand('open rec_pdb/BACE_%d-oe.pdb' %i)
   runCommand('addcharge std')
   runCommand('write format mol2 #0 rec_mol2/BACE_%d_charged.mol2' %i)
   runCommand('close #0')

# saving receptor pdbs without hydrogen
for i in range(1,21):
   runCommand('open rec_pdb/BACE_%d-oe.pdb' %i)
   runCommand('select H; delete sel')
   runCommand('write #0 rec_noH/BACE_%d_noH.pdb' %i)
   runCommand('close #0')


