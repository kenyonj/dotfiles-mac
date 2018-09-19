#!/usr/bin/env zsh

CLEAN_BRANCH_COLOR="#[fg=colour16, bg=colour2]"
DIRTY_BRANCH_COLOR="#[fg=colour16, bg=colour1]"
STAGED_BRANCH_COLOR="#[fg=colour16, bg=colour3]"

git_status_color() {
  local git_status=$(cd $1; git status --porcelain 2>&1)

  if [[ "$git_status" =~ MM ]]; then
    echo -n $DIRTY_BRANCH_COLOR
  elif [[ "$git_status" =~ M ]]; then
    echo -n $STAGED_BRANCH_COLOR
  else
    echo -n $CLEAN_BRANCH_COLOR
  fi
}

if [[ -d "$1/.git" ]]
then
  branch_name=$(cd $1; git rev-parse --abbrev-ref HEAD)
  echo -n "$(git_status_color $1) $branch_name "
else 
  echo ""
fi
