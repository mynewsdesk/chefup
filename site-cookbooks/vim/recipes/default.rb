include_recipe "homebrew"

package "macvim"

directory "#{ENV['HOME']}/.vim/colors" do
  recursive true
  mode 00755
end

directory "#{ENV['HOME']}/.vim/bundle" do
  recursive true
  mode 00755
end

%w[vimrc gvimrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
    mode 00644
  end
end

cookbook_file "#{ENV['HOME']}/.vim/colors/desert256.vim" do
  source "desert256.vim"
  mode 00644
end

cookbook_file "#{ENV['HOME']}/.rc.d/vim.sh" do
  source "vim.sh"
  mode 00644
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
