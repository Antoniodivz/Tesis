#!/bin/bash

for delta in 0 10 20 30 40 50 60;
do
	cd /home/toodivz/Documents/Tesis/Hoti_curadrado/Delta_$delta
	papermill Hoti_$delta.ipynb Hoti_$delta.output.ipynb
done
