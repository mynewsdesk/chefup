base_dir = File.expand_path(File.dirname(__FILE__))
file_cache_path File.join(base_dir, "tmp", "cache")
cookbook_path File.join(base_dir, "cookbooks"), File.join(base_dir, "site-cookbooks")
file_backup_path File.join(base_dir, "tmp", "backup")
