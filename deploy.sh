#!/usr/bin/env bash

git checkout deploy

mkdir -p www

git cat-file blob master:entry.html >www/entry.html
cp -r css js www

git add www
git commit -m "pre-deploy commit"

git push

git checkout master
