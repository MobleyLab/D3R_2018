# Files are adopted and modified from Dock6 tutorial http://dock.compbio.ucsf.edu/DOCK_6/tutorials/sphere_generation/generating_spheres.htm

for i in $(seq 1 20)
do
  echo $i
  mkdir $i
  cd $i

  # run sphgen to generate spheres in the empty pocket
  sed "s/XXX/${i}/g" ../INSPH > INSPH
  sphgen

  # select spheres in the binding pocket, uses knowledge about reference ligands from available PDBs to define the binding pocket
  sphere_selector BACE_${i}.sph ../ref_lig/ref_${i}.mol2 7.0

  # generates box around the binding pocket
  sed "s/XXX/${i}/g" ../box.in > box.in
  showbox < box.in  

  # precalculates the grid energy
  sed "s/XXX/${i}/g" ../grid.in > grid.in
  grid -i grid.in

  #running dock6
  sed "s/XXX/${i}/g" ../dock.in > dock.in
  dock6 -i dock.in

  cd ../
done
