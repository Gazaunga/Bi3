#!/bin/sh
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$PATH:$HOME/.rbenv/bin"
else
  export PATH="$PATH:$HOME/.gem/ruby/2.4.0/bin"
fi
