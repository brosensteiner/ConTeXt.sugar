#!/bin/bash

#check if context is installed:
if [ ! -x "`which context`" ]; then
	echo "You need to install ConTeXt first, respectively ConText is not in your PATH variable."
	exit 1
fi

