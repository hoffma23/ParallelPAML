#!/bin/bash
find ./ -type f -exec sed -i 's/treesub.cu/treesub.cu/' {} \;
#find ./ -type f -exec sed -i 's/treesub.c/treesub.cu/' {} \;
