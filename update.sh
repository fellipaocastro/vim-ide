#!/bin/bash
set -e

git pull
vim +BundleUpdate +BundleInstall +qall
