include_recipe "homebrew"

package "macvim"

directory "#{ENV['HOME']}/.vim/colors" do
  recursive true
end

directory "#{ENV['HOME']}/.vim/bundle" do
  recursive true
end

%w[vimrc gvimrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
  end
end

cookbook_file "#{ENV['HOME']}/.vim/colors/desert256.vim" do
  source "desert256.vim"
end

script "clone_vundle" do
  interpreter "bash"
  code <<-EOH
    if [ ! -e #{ENV['HOME']}/.vim/bundle/vundle ]
    then
      git clone https://github.com/gmarik/vundle.git #{ENV['HOME']}/.vim/bundle/vundle
    fi
    exit 0
  EOH
end
