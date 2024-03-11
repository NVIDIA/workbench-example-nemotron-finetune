#!/bin/bash
# This file contains bash commands that will be executed at the end of the container build process,
# after all system packages and programming language specific package have been installed.
#
# Note: This file may be removed if you don't need to use it

sudo -E curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo -E bash
sudo -E apt-get install git-lfs

sudo -E chmod -R 777 /opt/NeMo