#!/bin/bash
# Ensure you are on the main branch.
git checkout main

# Merge branch1 into main.
git merge branch1

# If merge conflicts occur, resolve them manually.
# After resolving conflicts, stage the resolved files and commit:
# git add <resolved-files>
# git commit -m "Merge branch1 into main with conflict resolution"
