# Usage: bash run_MD.sh 

ref="3dv5"
charge=1

# parameterize
bash ../../scripts/1_run_parameterization.sh $ref $charge

# equilibrate and production MD
mkdir mdout netcdf PBS rst
bash ../../scripts/2_run_MD.sh $ref

# run MM-GBSA analysis
bash ../../scripts/3_run_MMGBSA.sh
