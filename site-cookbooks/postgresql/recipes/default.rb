include_recipe "homebrew"

homebrew_tap "mynewsdesk/mnd" do
  action :tap
end

package "mnd-postgresql"

execute "initdb /usr/local/var/postgres" do
  creates "/usr/local/var/postgres/PG_VERSION"
end

unless File.exists?("#{ENV['HOME']}/Library/LaunchAgents/homebrew.mxcl.mnd-postgresql.plist")
  directory "#{ENV['HOME']}/Library/LaunchAgents" do
    mode 00755
  end
  execute "cp /usr/local/Cellar/mnd-postgresql/9.1/homebrew.mxcl.mnd-postgresql.plist #{ENV['HOME']}/Library/LaunchAgents/"
  execute "launchctl load -w #{ENV['HOME']}/Library/LaunchAgents/homebrew.mxcl.mnd-postgresql.plist"
end
