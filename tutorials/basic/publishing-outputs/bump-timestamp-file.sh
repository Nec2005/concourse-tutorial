#!/bin/sh

set -e # fail fast
set -x # print commands

apt-get install git
git clone resource-gist updated-gist

cd updated-gist
date > bumpme

git config --global user.email "necatiunal2005@gmail.com"
git config --global user.name "Nec2005"

git add .
git commit -m "Bumped date"
