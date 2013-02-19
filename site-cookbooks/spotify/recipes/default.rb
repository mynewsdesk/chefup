if File.exists?("/Applications/Spotify.app")
  Chef::Log.info "Already installed; to upgrade, remove /Applications/Spotify.app"
else
  remote_file "#{Chef::Config[:file_cache_path]}/SpotifyInstaller.zip" do
    source "http://download.spotify.com/SpotifyInstaller.zip"
  end

  execute "unzip SpotifyInstaller" do
    command "unzip #{Chef::Config[:file_cache_path]}/SpotifyInstaller.zip -d #{Chef::Config[:file_cache_path]}/"
  end

  execute "Run SpotifyInstaller" do
    command "open #{Chef::Config[:file_cache_path]}/Install\\ Spotify.app"
  end
end
