# Usage: bash run_MMGBSA.sh
# needs to be in the correct folder
# takes about 5-6 hours to run on a single CPU for BACE-1


# running MM-GBSA analysis
module load amber/16
python2 /opt/amber/16/bin/MMPBSA.py -O -i ../../scripts/mmgbsa.in -o FINAL_RESULTS_MMPBSA.dat -sp complex_wat.prmtop -cp complex_nowat.prmtop -rp protein_nowat.prmtop -lp lig_nowat.prmtop -y netcdf/prod_npt.nc > mm-gbsa.log

# extracting scores from FINAL_RESULTS_MMPBSA.dat
result=$(grep 'DELTA TOTAL' FINAL_RESULTS_MMPBSA.dat)
splitted=($result)
# writing to mmgbsa_score.txt file
# syntax MMGBSA-score std-dev std-error MMPBSA-score std-dev std-error
echo ${splitted[2]} ${splitted[3]} ${splitted[4]} ${splitted[7]} ${splitted[8]} ${splitted[9]} > mmgbsa_score.txt
