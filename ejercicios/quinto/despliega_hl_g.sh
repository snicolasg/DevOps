#!/bin/bash


find $(df $1|tr -s " "|cut -d" " -f6|tail -1) -xdev -inum $(ls -i $1|cut -d" " -f1)
