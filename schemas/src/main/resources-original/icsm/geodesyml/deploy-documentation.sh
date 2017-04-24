#!/usr/bin/env bash
set -e
rm -rf doc/xsd-generated/html || exit 0

(cd doc/xsd-generated && ant html)

cd doc/xsd-generated/html
git init
git config user.name "Travis CI"
git config user.email "lazar.bodor@ga.gov.au"

git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1

