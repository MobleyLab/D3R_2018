a_path=$1

scp ${a_path}complex_wat.prmtop ./
scp ${a_path}complex_wat.inpcrd ./
scp ${a_path}lig_pose_mod.mol2 lig_pose.mol2

cp ../../BACE_12/pose_2_ref_3k5c/run_setup_MD_MMGBSA.sh ./
