directory "#{ENV['HOME']}/Applications" do
  mode 00755
end

dmg_package "Alfred" do
  volumes_dir "Alfred.app"
  destination "#{ENV['HOME']}/Applications"
  source "http://cachefly.alfredapp.com/alfred_1.3.1_261.dmg"
  action :install
end

