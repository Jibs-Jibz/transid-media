#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.transidmedia.online' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<Jibs-Jibz>.github.io
# git push -f git@github.com:<Jibs-Jibz>/<Jibs-Jibz>.github.io.git main

# if you are deploying to https://<Jibs-Jibz>.github.io/<transid-media>
# git push -f git@github.com:<Jibs-Jibz>/<transid-media>.git main:gh-pages

cd -