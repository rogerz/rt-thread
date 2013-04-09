#!/bin/bash

rm .files2gtag

for f in include src components $@
do
    echo "Adding $f"
    find $f -iregex '.*\.\(c\|h\)' >> .files2gtag
done

gtags -f .files2gtag
