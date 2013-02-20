include_recipe "homebrew"

package "git"

template "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig.erb"
end

directory "#{ENV['HOME']}/.bashrc.d"
cookbook_file "#{ENV['HOME']}/.bashrc.d/git-prompt.sh" do
  source "git-prompt.sh"
end
