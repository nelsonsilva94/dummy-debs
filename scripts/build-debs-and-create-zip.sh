#!/bin/bash
set -e

script_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
pushd "$script_path" >/dev/null

cd $script_path/../test-debs
dpkg-deb --build 1.1.0/ ipmv-core.deb
dpkg-deb --build 1.6.10/ ipmv-dep-1.deb
dpkg-deb --build 2.0.4 ipmv-dep-2.deb

mv ipmv-core.deb ipmv-dep-1.deb ipmv-dep-2.deb $script_path/../ipmv-debs/repo


cd $script_path/../ipmv-debs/repo
dpkg-scanpackages . /dev/null | tee Packages | gzip -9c > Packages.gz

# dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz

cd $script_path/..
zip -r ipmv-debs.zip ipmv-debs