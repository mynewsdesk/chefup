include_recipe "homebrew"

package "git"

template "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig.erb"
  mode 00644
end

directory "#{ENV['HOME']}/.rc.d"
cookbook_file "#{ENV['HOME']}/.rc.d/git-prompt.sh" do
  source "git-prompt.sh"
end
