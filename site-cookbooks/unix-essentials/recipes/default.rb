include_recipe "homebrew"

package "git"
package "ack"
package "watch"

%w[bash_profile bashrc screenrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
  end
end

template "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig.erb"
end
