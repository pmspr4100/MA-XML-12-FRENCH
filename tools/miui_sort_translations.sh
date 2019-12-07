#!/bin/bash

XSL=tools/misort.xsl
INDENT=2

# applies XSL stylesheet with Xalan for each file
for input in `find . -name "strings.xml"`;
do
	echo "backup & sort routine for : $input"
	cp $input $input."orig"
	Xalan -i $INDENT -o $input $input $XSL
done
