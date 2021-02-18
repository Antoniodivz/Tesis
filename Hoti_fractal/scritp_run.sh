#!/bin/bash

cd /home/toodivz/Documents/Tesis/Hoti_fractal/Delta_0
        papermill Hoti_fractal.ipynb Hoti_fractal.output.ipynb -p name_array LatticeSierpinski_18x18.xyz -p epsi 0.0 \
		                 -p cal_value True
value=$(cat /home/toodivz/Documents/Tesis/Hoti_fractal/Delta_0/gamma_value.txt)


for delta in 0.01 0.05 0.1 0.2 0.3 0.4 0.5;
do
	cd /home/toodivz/Documents/Tesis/Hoti_fractal/Delta_$delta
	papermill Hoti_fractal.ipynb Hoti_fractal_$delta.output.ipynb -p name_array LatticeSierpinski_18x18.xyz -p epsi $delta \
		-p nval $value -p cal_value False
done
