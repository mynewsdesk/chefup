include_recipe "homebrew"

package "git"
package "ack"
package "watch"

%w[bash_profile bashrc screenrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
    mode 0644
  end
end

template "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig.erb"
  mode 0644
end
