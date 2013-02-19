include_recipe "homebrew"

package "rbenv"
package "ruby-build"

cookbook_file "#{ENV['HOME']}/.bashrc.d/rbenv.sh" do
  source "rbenv.sh"
end

script "install #{node[:rbenv][:version]}" do
  interpreter "bash"
  code <<-EOH
    rbenv install #{node[:rbenv][:version]}
    rbenv global #{node[:rbenv][:version]}
    exit 0
  EOH
end
