Plugins are git submodules as per [these instructions](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/).

To make the appropriate links on Windows, install the Powershell Community Externsions.

Installation instructions for windows adapted from the vimcast linked above:

```
$ cd ~
$ git clone http://github.com/balbano/dotvim.git .vim

$ New-Junction ~\vimfiles ~\.vim
$ New-Hardlink ~\.vimrc ~\.vim\.vimrc
$ New-Hardlink ~\.gvimrc ~\.vim\.gvimrc

$ cd .vim
$ git submodule init
$ git submodule update
```
