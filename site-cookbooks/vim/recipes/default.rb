include_recipe "homebrew"

package "macvim"

directory "#{ENV['HOME']}/.vim/colors" do
  recursive true
end

directory "#{ENV['HOME']}/.vim/bundle" do
  recursive true
end

cookbook_file "#{ENV['HOME']}/.vimrc" do
  source "vimrc"
end

cookbook_file "#{ENV['HOME']}/.vim/colors/desert256.vim" do
  source "desert256.vim"
end

script "clone_vundle" do
  interpreter "bash"
  code <<-EOH
    if [ ! -e #{ENV['HOME']}/.vim/bundle/vundle ]
    then
      git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
    fi
    exit 0
  EOH
end
