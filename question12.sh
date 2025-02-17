#!/bin/bash
# Switch back to branch2.
git checkout branch2

# Restore the stashed changes.
git stash pop

# Stage and commit the restored modifications.
git add file4
git commit -m "Commit modifications to file4"
