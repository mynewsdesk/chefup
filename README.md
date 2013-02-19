Chefup
======

Configure frequently-used tools for an OS X workstation with Chef.

Everything is run in user mode, no sudo needed.

Prerequisites
-------------
* An OS X installation

Setup
-----

Fetch this repo

    git clone https://github.com/janne/chefup.git

or

    curl -L https://github.com/janne/chefup/tarball|tar xz

Copy and update any .example files

    cp .ruby-version.example .ruby-version
    cp node.json.example node.json

And run chefup (possibly you want it in your PATH)

    cd ~/chefup && bin/chefup
