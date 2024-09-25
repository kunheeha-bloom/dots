#!/bin/zsh

arg=${1}


WORKTREE=$(echo $arg | ack -o "(.(?!\/))+$" | sed 's/\///g')
PROJECT_DIR=$(echo $arg | ack -o ".+(?<=\/)")

cd $PROJECT_DIR
git worktree remove $WORKTREE
git branch -d $WORKTREE
