Amon3 git repository
====================

* Scripts to build ISO and generate packages repository
* How to install Amon3


Amon3 repository and ISO Builder
================================

These scripts use https://github.com/eole/tools and https://github.com/eole/ports to build Amon3 repository and generate DVD or VM images

Setting up a build system
=========================

Install [FreeBSD](https://www.freebsd.org/) 11.2-RELEASE (i386 or amd64
depending on your target) on a machine with at least 25GB of hard disk
(UFS works better than ZFS) and at least 4GB of RAM to successfully build
all standard images.  All tasks require a root user.  Do the following to
grab the repositories (overwriting standard ports and src):

    # pkg install git
    # cd /usr
    # git clone https://dev-eole.ac-dijon.fr/git/amon3.git
    # cd amon3

    # builder/01-reset_opnsense_repos.sh # reset and update opnsense git repositories

    # builder/02-update_tools-repo.sh    # merge eole tools and ports git repositories with opnsense git repositories and push it to github eole

    # builder/03-get_precompile_sets.sh  # download precompiled sets

    # builder/04-gen_amon3_distfile.sh   # generate amon-3.0 tarball required for build amon-3.0 port

    # builder/05-build_ports_packages.sh # build ports and tarball packages set

    # builber/10-generate_img.sh         # generate @arg (dvd, vm-qcow2, vm-vmdk) image

    # builder/11-upload_sets.sh          # upload generated sets and images to SERVER (configured in eole/tools)

    # builder/12-amon3_packages_repo.sh  # update Amon3 repository


Amon3 insntallation/configuration
=================================

* Plugin list :
** os-nginx : reverse proxy

Download ISO here : http://test-eole.ac-dijon.fr/amon3/FreeBSD:11:amd64/20.1/sets/OPNsense-20.1-OpenSSL-dvd-amd64.iso

