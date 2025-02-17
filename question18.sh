#!/bin/bash
# Identify and list all local and remote branches.
git branch -a

# Switch to the main branch.
git checkout main

#############################
# Merge and remove branches starting with "ready":
#############################
for branch in $(git branch --list "ready*"); do
    echo "Merging branch '$branch' into main..."
    git merge "$branch" -m "Merge $branch into main"
    # If merge conflicts occur, resolve them manually before proceeding.
    git branch -d "$branch"
done

#############################
# Update branches starting with "update" with the latest main:
#############################
for branch in $(git branch --list "update*"); do
    echo "Updating branch '$branch' with changes from main..."
    git checkout "$branch"
    git merge main -m "Update $branch with latest main changes"
done

# Switch back to main after updating.
git checkout main
