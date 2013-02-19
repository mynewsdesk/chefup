include_recipe "homebrew"

package "macvim"

directory "#{ENV['HOME']}/vim/colors"

cookbook_file "/home/vagrant/.vimrc" do
  source "vimrc"
end

cookbook_file "/home/vagrant/.vim/colors/desert256.vim" do
  source "desert256.vim"
end

script "clone_vundle" do
  interpreter "bash"
  code <<-EOH
    if [ ! -e /home/vagrant/.vim/bundle/vundle ]
    then
      git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
    fi
    exit 0
  EOH
end
