directory "#{ENV['HOME']}/Applications" do
  mode 00755
end

unless File.exists?("#{ENV['HOME']}/Applications/Flowdock.app") || File.exists?("/Applications/Flowdock.app")

  remote_file "#{Chef::Config[:file_cache_path]}/flowdock.zip" do
    source "https://d2ph5hv9wbwvla.cloudfront.net/mac/Flowdock_v1_0_8.zip"
  end

  execute "unzip flowdock.zip" do
    command "unzip #{Chef::Config[:file_cache_path]}/flowdock.zip -d #{Chef::Config[:file_cache_path]}/"
  end

  execute "copy Flowdock to #{ENV['HOME']}/Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/Flowdock.app #{Regexp.escape("#{ENV['HOME']}/Applications/Flowdock.app")}"
  end

  ruby_block "test to see if Flowdock.app was installed" do
    block do
      raise "Flowdock.app was not installed" unless File.exists?("#{ENV['HOME']}/Applications/Flowdock.app")
    end
  end
end
