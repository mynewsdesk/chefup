# Enable rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Avoid using `bundle exec`
function b {
  if [[ -a Gemfile ]]
  then bundle exec $*
  else command $*
  fi
}
