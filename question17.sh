#!/bin/bash
# (Assumes the repository was cloned and you are starting on the main branch with the following structure:)
# main:
#  ├── dir1
#  │    └── dir2
#  │         └── foo
#  ├── dir3
#  │    ├── bar
#  │    └── bar_copy
#  ├── LICENSE
#  └── README.md

##########################
# Create and configure branch1:
##########################
git checkout -b branch1
# Move 'foo' from dir1/dir2/ to dir1/ (removing the dir2 level).
mv dir1/dir2/foo dir1/
# Remove the now-empty dir1/dir2.
rmdir dir1/dir2
# Remove the unwanted file "bar_copy" from dir3.
rm dir3/bar_copy
# Create new file "newfile1".
touch newfile1
# Stage and commit all changes.
git add -A
git commit -m "Configure branch1: moved foo, removed bar_copy, added newfile1"

# Switch back to main.
git checkout main

##########################
# Create and configure branch2:
##########################
git checkout -b branch2
# Rename 'foo' to 'foo_modified' in dir1/dir2.
mv dir1/dir2/foo dir1/dir2/foo_modified
# Remove the root-level directory "dir3" entirely.
rm -rf dir3
# Create a new directory "dir1/dir3".
mkdir -p dir1/dir3
# Create new file "newfile2" in the new directory.
touch dir1/dir3/newfile2
# Stage and commit all changes.
git add -A
git commit -m "Configure branch2: renamed foo, removed root-level dir3, added newfile2 under dir1/dir3"
