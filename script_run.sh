#!/bin/bash
for delta in 0.01 0.05 0.1 0.2 0.3 0.4 0.5; do
	cd ~/Documents/Tesis/Hoti_curadrado
	cp -r ~/Documents/Tesis/Hoti_curadrado/Delta_0 ~/Documents/Tesis/Hoti_curadrado/Delta_$delta

	cd ~/Documents/Tesis/Hoti_fractal
	cp -r ~/Documents/Tesis/Hoti_fractal/Delta_0 ~/Documents/Tesis/Hoti_fractal/Delta_$delta
done
