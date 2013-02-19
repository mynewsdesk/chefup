directory "#{ENV['HOME']}/.bashrc.d"

cookbook_file "#{ENV['HOME']}/.bashrc.d/vi-mode.sh" do
  source "vi-mode.sh"
end

%w[editrc inputrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
    mode 0644
  end
end


