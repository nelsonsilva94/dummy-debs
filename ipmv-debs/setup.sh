#!/bin/bash
set -e

REPO_DIR="$(dirname "$(realpath "$0")")/repo"

# Add local APT repository
echo "deb [trusted=yes] file://$REPO_DIR ./" | tee /etc/apt/sources.list.d/ultrablue-local.list

# Update APT cache
apt-get update

# Install the core package (which pulls dependencies from the local repo)
apt-get install -y ipmv-core
