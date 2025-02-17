#!/bin/bash
# Create a new branch for the assignment (you can name it as desired, here "assignment_branch").
git checkout -b assignment_branch

# Remove all .sh files (from the other questions) from this branch.
git rm *.sh

# Create a new text file named file13.txt.
touch file13.txt

# Stage and commit file13.txt.
git add file13.txt
git commit -m "Clean branch and add file13.txt"

# Push the new branch to GitHub.
git push -u origin assignment_branch
