# This file is for parameterizing protein-ligand complex
# Usage: bash run_parameterization.sh ref_lig charge
# Example: bash run_parameterization.sh 4gmi 0

module load amber/16

# running Antechamber to assign AM1-BCC charges
charge=$2
antechamber -i lig_pose.mol2 -fi mol2 -o LIG.mol2 -fo mol2 -c bcc -s 2 -nc $charge > antechamber.log

# creating library for ligand force field
parmchk -i LIG.mol2 -f mol2 -o LIG.frcmod
tleap -f ../../scripts/leap_LIG.in > leap_LIG.log

# parameterizing protein and ligand complex
tleap -f leap_${ref}.in > leap_complex.log
