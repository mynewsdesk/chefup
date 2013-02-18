Chefup
======

Configure frequently-used tools for an OS X workstation with Chef.

Prerequisites
-------------
* An OS X installation
* Git

Setup
-----

Git clone this repo

    git clone https://github.com/janne/chefup.git
    cd chefup

Run librarian to install all cookbooks

    librarian-chef install

Run Bundler to install all gems

    bundle install

And run chefup (probably you want an alias for this)

    cd ~/chefup && sudo bin/chefup
