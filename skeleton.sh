#!/bin/bash

# Ensure git repo exists in the folder
# Warn the user if it does not, and
# auto-create it if the user wishes
if [ ! -d ".git" ]; then
  echo "You don't have a git repo set up in this folder"
  echo "Are you sure this is the root of a react-native project?"
  echo "Hit any key to auto-create a git repo or SIGINT to stop."
  read
  git init
  git add -A
  git commit -m "[init]"
fi

# Fetch skeleton repo
git fetch https://github.com/uditkarode/react-native-skeleton master

# cherry-pick commits
git cherry-pick --strategy-option theirs 37dd2a38d3aabfdef46797feeb168b4c6937ea4a
git cherry-pick --strategy-option theirs 4810196210c0177ed9a0ab2b055233ce368ec5bb
rm -r __tests__ App.js
git add -A
git commit -S -m "[rm:root] remove sample files"
git cherry-pick --strategy-option theirs 4810196210c0177ed9a0ab2b055233ce368ec5bb..e5026547729259a501918bc83291de7f9e17eeac
rm projectFixer.sh
git add -A
git commit -S -m "[rm:root] remove unneeded script"

# Re-fetch dependencies
yarn

# Profit!
echo && echo "Operation was a success!"
echo "Don't forget to set up ANDROID_SDK_ROOT or copy in your local.properties file!"
echo "You can delete this script now."
