# script for running MD
# command: bash 2_run_MD.sh reference_PDB
# example: bash 2_run_MD.sh 4gmi
# Path  of Amber executables might need to be modified

module load amber/18
module load netcdf
module load cuda/8.0.44

mdinpath="../../../md_Amber_inputfiles/"

ref=$1

# minimization for 1000 steps keeping the protein fixed using 25 kcal/mol-Å2 positionalrestraints in NVT ensemble
oldStep="complex_wat"
step="min_ntr_l"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c ${oldStep}.inpcrd -ref ${oldStep}.inpcrd \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# minimization for 1000 steps keeping the protein fixed using 10 kcal/mol-Å2 positionalrestraints in NVT ensemble
oldStep="min_ntr_l"
step="min_ntr_h"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c rst/${oldStep}.rst -ref rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# heating the system from 10 K to 300 K in NVT ensemble for140 ps while restraining the protein-ligand com-plex using positional restraints of 10 kcal/mol-Å2 in NVT ensemble
oldStep="min_ntr_h"
step="heat"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c rst/${oldStep}.rst -ref rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# gradually decreasing restraints using 5 kcal/mol-Å2 restraints onthe protein-ligand complex for 20 ps in NVT ensemble
oldStep="heat"
step="release_rest_5"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c rst/${oldStep}.rst -ref rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# gradually decreasing restraints using 2 kcal/mol-Å2 restraints onthe protein-ligand complex for 20 ps in NVT ensemble
oldStep="release_rest_5"
step="release_rest_2"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c rst/${oldStep}.rst -ref rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# 2 kcal/mol-Å2 restraint only on the ligand for 20 ps in NVT ensemble
oldStep="release_rest_2"
step="release_lig_2"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c rst/${oldStep}.rst -ref rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# 20 ps simulation with no restraints in NVT ensemble
oldStep="release_lig_2"
step="no_rest"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# 1 ns of equilibration in NPT ensemble
oldStep="no_rest"
step="equi_npt_1"
pmemd.cuda -O -i mdin_${ref}/equi_npt.in -c rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# 1 ns of equilibration in NPT ensemble
oldStep="equi_npt_1"
step="equi_npt_2"
pmemd.cuda -O -i mdin_${ref}/equi_npt.in -c rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log

# 13 ns of production in NPT ensemble
oldStep="equi_npt_2"
step="prod_npt"
pmemd.cuda -O -i mdin_${ref}/${step}.in -c rst/${oldStep}.rst \
  -p complex_wat.prmtop -O -o mdout/${step}.out -inf PBS/${step}.info \
  -r rst/${step}.rst -x netcdf/${step}.nc -l PBS/${step}.log


