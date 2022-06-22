#!bin/bash

###  create brick structure

id=9
i=$2
ii=$3


# create brick folder
if [ $1 -le $id ] 
	then
	mkdir b00000$1	
else
	mkdir b0000$1	

fi

#  create folders inside the brick
if [ $1 -le $id ] 
	then
	cd b00000$1
	# copy macros for linking, alignment, tracking
	cp /home/emu/CERN_SND/shch/macros_BT_VT/*.* .

		
	mkdir AFF

		while [ $i -le $id ] && [ $i -le $ii ]
			do 	
 			mkdir p00$i
			((i++))
			done
			
		while [ $i -gt $id ] && [ $i -le $ii ]
			do 	
 			mkdir p0$i
			((i++))
			done		
		
	else
	cd b0000$1
	# copy macros for linking, alignment, tracking
	cp /home/emu/CERN_SND/shch/macros_BT_VT/*.* .
	
	mkdir AFF
		while [ $i -le $id ] && [ $i -le $ii ]
			do 	
 			mkdir p00$i
			((i++))
			done
			
		while [ $i -gt $id ] && [ $i -le $ii ]
			do 	
 			mkdir p0$i
			((i++))
			done		
fi
