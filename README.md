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

    git clone https://github.com/mynewsdesk/chefup.git

or

    curl -L https://github.com/mynewsdesk/chefup/tarball|tar xz

Copy and update the example files

    cp node.json.example node.json
    cp Cheffile.example Cheffile

And run chefup:

    cd ~/chefup && bin/chefup
