#!/bin/bash

cordinat=$(getevent -l | grep -m 2 ABS_MT_POSITION | grep -Eo '[0-9a-f]{8}')
# cordinat substr and hex to int
x=$((16#${cordinat:0:8}))
y=$((16#${cordinat:10}))

echo "x: $x y: $y";

for i in $(seq 1 1000)
do
	input text $i ;input tap $x $y;
	echo $i
done
