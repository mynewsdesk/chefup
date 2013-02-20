Chefup
======

Configure frequently-used tools for an OS X workstation with Chef.

Everything is run in user mode, no sudo needed.

Prerequisites
-------------
* Install the lastest OS X
* Install XCode from App Store

Setup
-----

Fetch this repo

    git clone https://github.com/janne/chefup.git

or

    curl -L https://github.com/janne/chefup/tarball|tar xz

Copy and update any .example files

    cp .ruby-version.example .ruby-version
    cp node.json.example node.json

And run chefup:

    cd ~/chefup && bin/chefup
