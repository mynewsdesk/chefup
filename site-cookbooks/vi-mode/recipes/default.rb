directory "#{ENV['HOME']}/.rc.d" do
  mode 00755
end

cookbook_file "#{ENV['HOME']}/.rc.d/vi-mode.sh" do
  source "vi-mode.sh"
  mode 00644
end

%w[editrc inputrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
    mode 00644
  end
end


