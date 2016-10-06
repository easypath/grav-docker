#!/bin/bash
# Copyright EasyPath IT Solutions Inc.
# Usage grav-docker.sh <domain_name>

# Clone latest Grav Docker
git clone https://github.com/easypath/grav-docker.git $1 && rm -rf $1/.git

# Run Docker build
(cd $1 && docker-compose up --build -d)
