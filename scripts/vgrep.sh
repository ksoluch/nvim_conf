#/bin/bash

EXT=$1
QUERY=$2

PATH_=$3
if [ -z "$PATH_" ]; then
  PATH_="."
fi

DEF="h|c|hpp|cpp|cc|s|S|pgen"

if [ "$EXT" = "def" ]; then
  if [ -z "$QUERY" ]; then
    # find $DEF
    find -L $PATH_ -type f -regextype posix-egrep -regex ".*\.($DEF)$" | xargs nvim -p
  else
    # find $DEF -exec rgrep $QUERY
    find -L $PATH_ -type f -regextype posix-egrep -regex ".*\.($DEF)$" -exec rgrep -El "$QUERY" {} \; | xargs nvim -p
  fi
else
  if [ -z "$QUERY" ]; then
    # find $EXT
    find -L $PATH_ -type f -regextype posix-egrep -regex ".*\.($EXT)$" | xargs nvim -p
  else
    # find $EXT -exec rgrep $QUERY
    find -L $PATH_ -type f -regextype posix-egrep -regex ".*\.($EXT)$" -exec rgrep -El "$QUERY" {} \; | xargs nvim -p
  fi
fi

