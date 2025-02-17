#!/bin/bash
# Create and switch to a new branch named branch2.
git checkout -b branch2

# Create file4, stage and commit it.
touch file4
git add file4
git commit -m "Add file4"

# Modify file4 (for example, append a line).
echo "Additional content" >> file4

# Stash the uncommitted modifications so you can switch branches without losing changes.
git stash push -m "Uncommitted changes in file4"

# Switch back to the main branch.
git checkout main
