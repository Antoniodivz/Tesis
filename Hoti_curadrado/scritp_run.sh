#!/bin/bash

cd /home/toodivz/Documents/Tesis/Hoti_curadrado/Delta_0
        papermill Hoti_0.ipynb Hoti_0.output.ipynb -p name_array array_18x18.xyz -p epsi 0.0 \
		                 -p cal_value True
value=$(cat /home/toodivz/Documents/Tesis/Hoti_curadrado/Delta_0/gamma_value)


for delta in 0.01 0.05 0.1 0.2 0.3 0.4 0.5;
do
	cd /home/toodivz/Documents/Tesis/Hoti_curadrado/Delta_$delta
	papermill Hoti_$delta.ipynb Hoti_$delta.output.ipynb -p name_array array_18x18.xyz -p epsi $delta \
		-p nval value -p cal_value False
done
