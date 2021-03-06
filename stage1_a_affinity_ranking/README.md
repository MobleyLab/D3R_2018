# Input files for Stage 1a affinity ranking subchallenge

This directory (and its subdirectories) provides the input files of the receptors (pdb files) and the 154 ligands (mol2 files) that we prepared for Stage 1a affinity ranking subchallenge. Here, we also provide all the scripts that we used to parametrize the receptors and the ligands using amber and tleap, respectively. Moreover, the scripts used to perform MD simulations and MM-GBSA calculations are available in this directory.
 
## Manifest

- [`ligands`](ligands): directory containing the mol2 files of the 154 ligands and the script used to run the parametrization, the MD simulations and the MM-GBSA calculations on each ligand.
- [`receptors`](receptors): directory containing the pdb files of the 8 pdb structures that we used to prepare the 154 receptor-ligand complexes.
- [`scripts`](scripts): directory containing the scripts that we used to conduct the parametrization, the MD simulations and the MM-GBSA calculations.
- [`BACE_ID.txt`](BACE_ID.txt): file containing all the IDs of the 154 ligands for the Stage 1a affinity ranking subchallenge as provided by the D3R organizers.



