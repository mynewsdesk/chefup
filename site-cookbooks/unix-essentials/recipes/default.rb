include_recipe "homebrew"

%w[ack watch readline wget libxml2 the_silver_searcher].each do |pkg|
  package pkg
end

cookbook_file "#{ENV['HOME']}/.screenrc" do
  source "screenrc"
  mode 00644
end
