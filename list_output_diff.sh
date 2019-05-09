#!/bin/bash

for i in "$(dirname $0)"/*.in
do
	out=${i%.in}.out
	if $1 < $i | diff $out -
	then
		echo $i ✓
	else
		echo $out differs from command output
	fi
done