#Prepare the receptor using the pdb structure of the reference receptor and the mol2 file of the reference ligand.
receptor_setup -protein reference.pdb -bound_ligand reference.mol2

#Generate 50 docking poses of the 1000 conformers of a ligand.
hybrid -receptor receptor.oeb.gz -dbase 1000-conformers.mol2 -dock_resolution High -num_poses 50 -score_tag -annotate_scores -save_component_scores

#Optimize the docked poses.
scorepose -receptor receptor.oeb.gz -in hybrid_docked_structure.oeb.gz -prefix opt -optimize Standard -sort_poses true -annotate -component_scores -score_tag -annotate_scores
