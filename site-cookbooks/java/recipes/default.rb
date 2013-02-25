return unless node["platform"] == "mac_os_x"
directory "#{ENV['HOME']}/Applications" do
  mode 00755
end

dmg_package "JavaForOSX" do
  source "http://support.apple.com/downloads/DL1572/en_US/"
  destination "#{ENV['HOME']}/Applications"
  volumes_dir "Java for OS X 2012-006"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
end

