#!/usr/bin/env sh

# abort on errors
set -e

# build
bun run build

# navigate into the build output directory
cd dist
git init
git add -A
git commit -m "Deploy"
git push -f git@github.com:Nabil-Alhanif/basic-blog-test.git master:gh-pages
cd -
