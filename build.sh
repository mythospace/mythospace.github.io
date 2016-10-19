#!/bin/bash
DIR=$(dirname "$BASH_SOURCE")
pushd $DIR/..
mythos="$(pwd)"
popd
mythosjekyll="$mythos/mythosjekyll"
mythospace="$mythos/mythospace"
pushd "$mythospace"
git checkout master
git pull origin master
echo jekyll build --source "$mythosjekyll" --destination "$mythospace"
jekyll build --source "$mythosjekyll" --destination "$mythospace"
git add . && git commit -a && git push origin master
popd
