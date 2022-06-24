#!/bin/bash
n=0
m=0
d=1
echo "`expr $1 \* $1`" >> array_$1x$1.xyz
echo " " >> array_$1x$1.xyz 

for j in $(seq 0 `expr $1 - 1` ); do 
	for i in $(seq 0  `expr $1 - 1` ); do
	
		if [ $2 = 'xy' ]; then 
			if [ `expr $i % 2` -eq `expr $j % 2`  ]; then
				d=1
			fi
			if [ `expr $i % 2` -ne `expr $j % 2`  ]; then
				d=-1
			fi	
		fi

		if [ $2 = 'x' ]; then 
			if [ `expr $i % 2` -eq  1  ]; then
				d=1
			fi
			if [ `expr $i % 2` -eq 0  ]; then
				d=-1
			fi
		fi
		
		if [ $2 = 'y' ]; then 
			if [ `expr $j % 2` -eq  1  ]; then
				d=1
			fi
			if [ `expr $j % 2` -eq 0  ]; then
				d=-1
			fi
		fi	
		
		echo "H $i $j 0 $n $d" >> array_$1x$1.xyz
		
		if [ `expr $i % 2` -eq 1 ]; then
			n=`expr $n + 1`
		fi
		if [ `expr $j % 2` -eq 1 ] && [ $i -eq `expr $1 - 1` ]; then
			m=`expr $m + $1 / 2`
		fi
		if [ `expr $1 - 1` -eq $i  ]; then
			n=$m
		fi

		
	done
done

