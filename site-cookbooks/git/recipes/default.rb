include_recipe "homebrew"

package "git"

template "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig.erb"
  mode 00644
  action :create_if_missing
end

directory "#{ENV['HOME']}/.rc.d" do
  mode 00755
end
cookbook_file "#{ENV['HOME']}/.rc.d/git-prompt.sh" do
  source "git-prompt.sh"
end
