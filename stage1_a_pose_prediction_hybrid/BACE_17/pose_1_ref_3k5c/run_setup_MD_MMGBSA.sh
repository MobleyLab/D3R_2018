# Usage: bash run_MD.sh 

ref="3k5c"
charge=0

# parameterize
bash ../../scripts/1_run_parameterization.sh $ref $charge

# equilibrate and production MD
mkdir mdout netcdf PBS rst
bash ../../scripts/2_run_MD.sh $ref

# run MM-GBSA analysis
bash ../../scripts/3_run_MMGBSA.sh
