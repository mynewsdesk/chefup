include_recipe "homebrew"

package "go"

directory node.default.go_lang.src_path do
  recursive true
  mode 00755
end

directory "#{ENV['HOME']}/.rc.d" do
  mode 00755
end

template "#{ENV['HOME']}/.rc.d/go-lang.sh" do
  source "go-lang.sh.erb"
  mode 00755
end
