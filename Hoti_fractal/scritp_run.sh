#!/bin/bash

for delta in 0 10 20 30 40 50 60;
do
	cd /home/toodivz/Documents/Tesis/Hoti_fractal/Delta_$delta
	papermill Hoti_fractal_$delta.ipynb Hoti_fractal_$delta.output.ipynb
done

#cd /home/toodivz/Documents/Tesis/Hoti_fractal/54x54
#papermill Hoti_fractal_54.ipynb Hoti_fractal_54.output.ipynb
