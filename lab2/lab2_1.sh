#!/bin/bash

# source is saved in /usr/src/kernels/[version]
# I'm not sure why I need the {} at the end of grep
# this is pretty slow. there must be a faster way to do this, this takes 2.9 seconds on my machine
find /usr/src/kernels -name '*.h' -exec grep -i 'magic' {} \; | wc -l
