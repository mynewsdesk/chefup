execute "curl get.pow.cx | sh" do
  creates "#{ENV['HOME']}/Library/Application\ Support/Pow/Current"
end

gem_package "powder"
execute "rbenv rehash"
