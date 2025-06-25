This repository contains dummy .deb packages for testing purposes only.
It includes a local APT repository setup and a few mock packages to validate packaging, dependencies, and installation workflows.


### How to Use
#### Assuming you are in the repo root directory
##### Build the dummy .deb packages and create a ZIP archive:
`./scripts/build-debs-and-create-zip.sh`


##### Set up the local APT repository and install the packages:
``sudo ./ipmv-debs/setup.sh`


That’s it — the dummy packages will be installed automatically from the local repository.
