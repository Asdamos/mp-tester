#!/bin/sh

for test in *.test
do
	grep validity "$test" > "$test".validity
	grep performance "$test" > "$test".performance
done
