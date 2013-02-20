%w[bash_profile bashrc].each do |file|
  cookbook_file "#{ENV['HOME']}/.#{file}" do
    source file
  end
end
