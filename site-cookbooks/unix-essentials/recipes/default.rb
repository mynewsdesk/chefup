include_recipe "homebrew"

%w[git ack watch readline wget].each do |pkg|
  package pkg
end

%w[bash_profile bashrc screenrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
  end
end

template "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig.erb"
end
