#!/bin/bash
# Create a directory "dir1" and a file "file2" inside it.
mkdir -p dir1
touch dir1/file2
# Stage the directory and its contents (do not commit yet).
git add dir1
