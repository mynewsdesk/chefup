directory "#{ENV['HOME']}/Applications"

dmg_package "Dropbox" do
  volumes_dir "Dropbox Installer"
  destination "#{ENV['HOME']}/Applications"
  source "https://www.dropbox.com/download?plat=mac"
  action :install
end

