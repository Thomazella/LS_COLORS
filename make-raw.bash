#! /usr/bin/env bash

#call dircolors (gnuutil) or gdircolors on the LS_COLORS file

if type gdircolors 1>/dev/null ; then
  command="gdircolors"
else
  command="dircolors"
fi

$command -b $HOME/Code/LS_COLORS/LS_COLORS > ./LS_COLORS_RAW
# delete second line
gsed --in-place 2d LS_COLORS_RAW
echo "remove trailing newline on file by hand :/"
