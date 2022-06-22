makescanset -set=$1.0.0.0 -dzbase=170 -dz=-450 -from_plate=$2 -to_plate=$3 -v=2
cp align.pass1.rootrc align.rootrc
emalign -set=$1.0.0.0 -new -v=2


makescanset -set=$1.0.0.0 -dzbase=170 -dz=-450 -from_plate=$2 -to_plate=$3
cp align.pass2.rootrc align.rootrc
emalign -set=$1.0.0.0 -new -v=2

makescanset -set=$1.0.0.0 -dzbase=170 -dz=-450 -from_plate=$2 -to_plate=$3 
cp align.pass3.rootrc align.rootrc
emalign -set=$1.0.0.0 -new -v=2

makescanset -set=$1.0.0.0 -dzbase=170 -dz=-450 -from_plate=$2 -to_plate=$3 

cp track.pass.rootrc track.rootrc
emtra -set=$1.0.0.0 -new -v=2
