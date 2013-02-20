directory "#{ENV['HOME']}/.rc.d"

cookbook_file "#{ENV['HOME']}/.rc.d/vi-mode.sh" do
  source "vi-mode.sh"
end

%w[editrc inputrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
  end
end


