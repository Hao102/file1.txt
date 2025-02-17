#!/bin/bash
# Retrieve all remote branches.
git fetch

# Check out the remote branch "update1" locally.
git checkout -b update1 origin/update1
