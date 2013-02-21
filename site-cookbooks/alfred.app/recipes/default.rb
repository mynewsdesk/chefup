directory "#{ENV['HOME']}/Applications"

dmg_package "Alfred" do
  volumes_dir "Alfred.app"
  destination "#{ENV['HOME']}/Applications"
  source "http://cachefly.alfredapp.com/alfred_1.3.1_261.dmg"
  action :install
end

