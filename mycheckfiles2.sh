#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

# print the file name, then the first and last ten lines:



echo "#========================================"
echo "Start times"
for f in rpl*.out; do
	echo "==> $f <=="
	head -n 1 "$f"; echo
done

echo "End times"

for f in rpl*.out; do
	echo "==> $f <=="
	tail -n 5 "$f"; echo
done 


echo "#========================================"
