#!/usr/bin/env zsh

CLEAN_BRANCH_COLOR="#[fg=colour16, bg=colour2]"
DIRTY_BRANCH_COLOR="#[fg=colour16, bg=colour1]"
STAGED_BRANCH_COLOR="#[fg=colour16, bg=colour3]"

branch_color() {
  local git_status=$(cd $1; git status -unormal 2>&1)

  if [[ "$git_status" =~ nothing\ to\ commit ]]
  then
    echo $CLEAN_BRANCH_COLOR
  elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
    echo $STAGED_BRANCH_COLOR
  else
    echo $DIRTY_BRANCH_COLOR
  fi
}

if [[ -d "$1/.git" ]]
then
  branch_name=$(cd $1; git rev-parse --abbrev-ref HEAD)
  echo -n "$(branch_color) $branch_name "
else 
  echo ""
fi
