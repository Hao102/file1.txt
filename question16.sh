#!/bin/bash
# Switch to branch2.
git checkout branch2

# Merge branch3 into branch2.
git merge branch3

# If merge conflicts occur, resolve them manually, then stage and commit:
# git add <resolved-files>
# git commit -m "Merge branch3 into branch2 with conflict resolution"

# Once the merge is complete, delete branch3.
git branch -d branch3
