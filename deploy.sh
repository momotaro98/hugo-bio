#!/bin/bash

set -eu

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

user_name="momotaro98"

# Go To Public folder
cd public

# Set Git configurations
git config --local user.name $user_name
git config --local user.email ${EMAIL_ADDRESS}

git remote set-url origin https://$user_name:${DEPLOY_TOKEN}@github.com/$user_name/$user_name.github.io.git

# Add changes to git.
git checkout -b master
git add .

# Commit changes
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push
git push origin HEAD
