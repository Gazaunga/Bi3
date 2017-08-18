#!/bin/bash

## CONSTANTS ##

PROJECT_BASE=$1

## FUNCTIONS ##

def mkd() {
mkdir $1 && cd $1 && ls -a
}

def mk_web() {
mkd $1
git clone https://github.com/Gazaunga/HTML5-Boilerplate.git ./
git clone https://github.com/Gazaunga/roughdraft.js.git ./
}

mk_project() {
mk_web
$EDITOR index.html
$BROWSER index.html
}

## SCRIPT ##

mk_project
