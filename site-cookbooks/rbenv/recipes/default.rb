include_recipe "homebrew"

package "rbenv"
package "ruby-build"

directory "#{ENV['HOME']}/.rc.d" do
  mode 00755
end
cookbook_file "#{ENV['HOME']}/.rc.d/rbenv.sh" do
  source "rbenv.sh"
  mode 00644
end

execute "rbenv install #{node.rbenv.version}" do
  returns [0,1]
end

execute "rbenv rehash"

execute "rbenv global #{node.rbenv.version}"
