#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# add .nojekyll to bypass GitHub Page’s default behavior
touch .nojekyll

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:Ti7oyan/astro-profile-example.git main:gh-pages

cd -