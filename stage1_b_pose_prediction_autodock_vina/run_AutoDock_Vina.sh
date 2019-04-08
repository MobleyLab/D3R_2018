mkdir lig_pdbqt rec_pdbqt docked_pdbqt docked_pdb

#path for AutoDock Vina
vina="/data/users/sasmals/Software/autodock_vina_1_1_2_linux_x86/bin/vina"
mgltools="/home/sukanya/Applications/mgltools_x86_64Linux2_1.5.6/MGLToolsPckgs/AutoDockTools/Utilities24"

#looping through the 20 ligands
for i in $(seq 1 20)
do
   echo $i

   # preparing ligand, converting ligand to pdbqt, starting ligands are from pose-prediction hybrid protocol
   pythonsh ${mgltools}/prepare_ligand4.py -l lig_mol2_prot/${i}.mol2
   mv lig_mol2_prot/${i}.pdbqt lig_pdbqt/

   #preparing receptor, receptors prepared using the same protocol as in pose-prediction-hybrid 
   pythonsh ${mgltools}/prepare_receptor4.py -r rec_pdb/BACE_${i}-oe.pdb
   mv rec_pdb/BACE_${i}-oe.pdbqt rec_pdbqt/

   # running AutoDock Vina
   $vina --config config/config_BACE-${i}.txt --ligand lig_pdbqt/${i}.pdbqt --out docked_pdbqt/${i}_docked.pdbqt

   # converting docked pdbqt file to pdbqt file so that it is easy to read in Chimera
   cut -c-66 docked_pdbqt/${i}_docked.pdbqt > docked_pdb/${i}_docked.pdb

done




