# Input files for Stage 1b pose prediction subchallenge using HYBRID (OpenEye Scientific SOftware)

This directory (and its subdirectories) provides the input files of the 20 receptors released by the organizers at the end of Stage 1a, the pdb codes of the reference ligands used in our HYBRID based pose prediction and the mol2 files of the docked poses of the 20 ligands that we submitted for Stage 1b pose prediction subchallenge. Here, we also provide all the scripts that we used to parametrize the receptors and the ligands using amber and tleap, respectively. Moreover, the scripts used to perform MD simulations are available in this directory.

## Manifest

- [`BACE_1`](BACE_1): directory containing the mol2 file of the selected docked pose of the ligand BACE_1 and the scripts used to run MD and MM-GBSA calculations on the rescpective protein-ligand complex.
- [`BACE_2`](BACE_2): directory containing the mol2 file of the selected docked pose of the ligand BACE_2 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_3`](BACE_3): directory containing the mol2 file of the selected docked pose of the ligand BACE_3 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_4`](BACE_4): directory containing the mol2 file of the selected docked pose of the ligand BACE_4 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_5`](BACE_5): directory containing the mol2 file of the selected docked pose of the ligand BACE_5 and the script used to run MD and MM-GBSA calculations on the respective proten -ligand complex.
- [`BACE_6`](BACE_6): directory containing the mol2 files of the selected docked pose of the ligand BACE_6 and the scripts used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_7`](BACE_7): directory containing the mol2 files of the selected docked pose of the ligand BACE_7 and the scripts used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_8`](BACE_8): directory containing the mol2 files of the selected docked pose of the ligand BACE_8 and the scripts used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_9`](BACE_9): directory containing the mol2 files of the selected docked pose of the ligand BACE_9 and the scripts used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_10`](BACE_10): directory containing the mol2 files of the selected docked pose of the ligand BACE_10 and the scripts used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_11`](BACE_11): directory containing the mol2 file of the selected docked pose of the ligand BACE_11 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_12`](BACE_12): directory containing the mol2 files of the selected docked pose of the ligand BACE_12 and the scripts used to run MD and MM-GBSA calculations on respective protein-ligand complex.
- [`BACE_13`](BACE_13): directory containing the mol2 file of the selected docked pose of the ligand BACE_13 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_14`](BACE_14): directory containing the mol2 file of the selected docked pose of the ligand BACE_14 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_15`](BACE_15): directory containing the mol2 file of the selected docked pose of the ligand BACE_15 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_16`](BACE_16): directory containing the mol2 file of the selected docked pose of the ligand BACE_16 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_17`](BACE_17): directory containing the mol2 files of the selected docked poses of the ligand BACE_17 and the scripts used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_18`](BACE_18): directory containing the mol2 file of the selected docked pose of the ligand BACE_18 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complex.
- [`BACE_19`](BACE_19): directory containing the mol2 file of the 2 selected docked poses of the ligand BACE_19 and the script used to run MD and MM-GBSA calculations on the respective protein-ligand complexes.
- [`BACE_20`](BACE_20): directory containing the mol2 files of the selected docked pose of the ligand BACE_20 and the scripts used to run MD and MM-GBSA calculations on respective protein-ligand complex.
- [`receptors`](receptors): directory containing the pdb files of the 20 reference pdb structures that we used to dock the 20 ligands of the pose prediction subchallenge; these structures were released by the organizers at the end of Stage 1a. Prior to docking using HYBRID, we prepared (see our protocol [`PosePredictionProtocol.txt`](PosePredictionProtocol.txt))and aligned these 20 structures to the respective pdb structures containing the reference ligands we used for our HYBRID based pose predicton.
- [`scripts`](scripts): directory containing the scripts that we used to conduct the parametrization, the docking, the MD simulations and the MM-GBSA calculations.
- [`submission-f6ax4`](submission-f6ax4): directory containing our HYBRID based submission for the Stage 1b pose prediction subchallenge; the mol2 files were submitted before MD and MM-GBSA calculations.
- [`Protocol-f6ax4.txt`](Protocol-f6ax4.txt): file containing the protocol of HYBRID based submission with the pdb and mol2 files before MD and MM-GBSA calculations.
- [`submission-5886w`](submission-5886w): directory containing our HYBRID based submission for the Stage 1b pose prediction subchallenge; the mol2 files were submitted after MD and MM-GBSA calculations.
- [`Protocol-5886w.txt`](Protocol-5886w.txt): file containing the protocol of HYBRID based submission with the pdb and mol2 files after MD and MM-GBSA calculations.
- [`stage1-b_info.txt`](stage1-b_info.txt): file containing additional information regarding the MD files.
- [`Table_2_crsytal_decoy_MM_GBSA.csv`](Table_2_crsytal_decoy_MM_GBSA.csv): Table 2 comparing whether MM-GBSA scores can discrimate between the crystal pose and the docked poses.
