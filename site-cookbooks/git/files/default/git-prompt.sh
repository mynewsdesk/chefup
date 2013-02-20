function parse_git_branch {
  BRANCH=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/")
  if [ -z $GIT_AUTHOR_EMAIL ]; then
    USER=$(git config --get user.email)
  else
    USER=$GIT_AUTHOR_EMAIL
  fi
  USER=${USER%%@*}
  [[ $BRANCH ]] && echo "[$USER@$BRANCH]"
}
if [[ -n $SSH_CONNECTION ]]; then
  PS1="\h:\w\$(parse_git_branch)\$ "
else
  PS1="\w\$(parse_git_branch)\$ "
fi
