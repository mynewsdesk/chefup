directory "#{ENV['HOME']}/Applications" do
  mode 00755
end

dmg_package "Google Chrome" do
  dmg_name "googlechrome"
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg"
  destination "#{ENV['HOME']}/Applications"
  action :install
end

