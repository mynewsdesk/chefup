# Bash

## Requirements

Bash needs to be installed and is not installed in this recipe. The default bash in OS X works fine.

## Description

Installs `.bashrc` and `.bash_profile`. The only purpose of `.bash_profile` is to source `.bashrc` so that the same configuration is used for login and non-login shells.

It sets up some ENV variables such as PATH and also sources all files in two directories - `~/.completions` and `~/.rc.d` for bash completions and custom settings respectively.

If you need to change or add anything, a custom file in `~/.rc.d` is probably the best way.
