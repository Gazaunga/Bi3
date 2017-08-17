#!/bin/sh

# only install if not already installed
if test ! "$(which atom &>/dev/null)"; then
  exit 0
elif test "$(which pacaur)"; then
  pacaur --noconfirm --noedit atom
fi

if test "$(which apm)"; then
  apm upgrade --confirm false

  modules="
  Sublime-Style-Column-Selection
  about
  activate-power-mode
  aesthetic-ui
  archive-view
  atom-beautify
  atom-css-comb
  atom-dark-syntax
  atom-dark-ui
  autocomplete-atom-api
  autocomplete-css
  autocomplete-html
  autocomplete-plus
  autocomplete-ruby
  autocomplete-snippets
  autoflow
  autosave
  background-tips
  base16-tomorrow-light-theme
  base16-tomorrow-dark-theme
  bookmarks
  bracket-matcher
  busy-signal
  color-picker
  command-palette
  cucumber
  dalek
  deprecation-cop
  dev-live-reload
  encoding-selector
  exception-reporting
  file-icons
  find-and-replace
  fuzzy-finder
  git-blame
  git-diff
  github
  go-to-line
  grammar-selector
  idiomatic-dark-syntax
  image-view
  incompatible-packages
  intentions
  keybinding-resolver
  yeti-ui
  wrap-guide
  whitespace
  toggle-quotes
  sync-settings
  seti-ui
  semantic-ui
  ruby-block
  rails-snippets
  one-dark-syntax
  one-light-ui
  one-dark-ui
  one-light-syntax
  "
  for module in $modules; do
    apm install "$module" || true
  done

  modules="
    metrics
    exception-reporting
  "
  for module in $modules; do
    apm remove "$module" || true
  done
fi
