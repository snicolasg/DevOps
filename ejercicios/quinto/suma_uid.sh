#!/bin/bash


for i in `cat /etc/passwd|cut -d: -f3`; do
	total=$(($total+$i))
done

echo $total
