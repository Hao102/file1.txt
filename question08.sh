#!/bin/bash
# Create a directory named dir2.
mkdir -p dir2
# Move all text files (*.txt) from the current directory to dir2.
mv *.txt dir2/
# Stage all changes (moves) and commit.
git add -A
git commit -m "Move all .txt files to dir2"
