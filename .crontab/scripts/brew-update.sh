#!/bin/bash

echo "------------------------------"
echo $(date -u)
echo "$ sh scripts/brew-update.sh"
echo "------------------------------"

/opt/boxen/homebrew/bin/brew update
/opt/boxen/homebrew/bin/brew doctor

echo "Done!"
