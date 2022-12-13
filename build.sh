#!/bin/bash
DIR="~/Desktop/rickydebojeet.github.io/"
USER="debojeetdas"
HOST="mars.cse.iitb.ac.in"
DEST="~/public_html/"

cd $DIR
# Build the project.
JEKYLL_ENV=production bundle exec jekyll build

# rsync the files to the server.
rsync -azP --delete _site/ $USER@$HOST:$DEST