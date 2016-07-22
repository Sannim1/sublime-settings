#!/bin/bash

# @TODO: check if running on Ubuntu or OSX in order to use the appropriate directory and notifier
#
# This could come in handy: http://askubuntu.com/questions/459402/how-to-know-if-the-running-platform-is-ubuntu-or-centos-with-help-of-a-bash-scri
# `python -mplatform | grep -qi Ubuntu`

CHANGES_EXIST=`git -C $HOME/.config/sublime-text-3/Packages/User/ status --porcelain`
if [[ ${CHANGES_EXIST} ]]; then
    notify-send -i terminal "Sublime Text 3" "Sublime settings have changed"
fi