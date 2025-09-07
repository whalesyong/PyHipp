#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l


echo "First lines of .out files"
head pipe.ip*.out

echo "Last lines of .out files"
tail pipe.ip*.out
