#!/bin/bash
set -e
set -x

APP_DIR=${1:-$HOME}

git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install

sudo mv -v /tmp/myunit.service /etc/systemd/system/myunit.service
sudo systemctl start myunit
sudo systemctl enable myunit