#!/bin/bash

set -eu

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

user_name="momotaro98"

ls -la
git submodule status
cd themes/resume
ls -la
cd ../..

echo 'Go To Public folder'
cd public

ls -la

echo 'Set Git configurations'
git config --local user.name $user_name
git config --local user.email ${EMAIL_ADDRESS}

git remote set-url origin https://$user_name:${DEPLOY_TOKEN}@github.com/$user_name/$user_name.github.io.git

echo 'Add changes to git.'
git checkout -b master
git add .

echo 'Commit changes'
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

echo 'Push'
git push origin HEAD


echo 'Back from public'
cd ..
git checkout -b master
git add public
git commit -m "Deploy public `date`"
git push origin HEAD
