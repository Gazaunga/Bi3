#!/bin/sh
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$PATH:$HOME/.rbenv/bin"
else
  export PATH="$PATH:$HOME/.gem/ruby/2.4.0/bin"
fi

BASH_DIR=$HOME/bash:$HOME/bash/xx
# load all shell files
for file in "$BASH_DIR"/*; do
[[ -x $file ]] && source "$file"
done
