
makescanset -set=$1.0.0.0 -dzbase=175 -dz=-1350 -from_plate=$2 -to_plate=$3 -reset -v=2

cp link.pass.rootrc link.rootrc
emlink -set=$1.0.0.0 -new -v=2


