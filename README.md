Plugins are git submodules as per [these instructions](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

To make the appropriate links on Windows, install the Powershell Community Externsions.

Installation instructions adapted from the vimcasts linked above:

```
git clone http://github.com/username/dotvim.git ~/.vim

$ New-Junction ~\vimfiles ~\.vim
$ New-Hardlink ~\.vimrc ~\.vim\.vimrc
$ New-Hardlink ~\.gvimrc ~\.vim\.gvimrc

cd ~/.vim
git submodule init
git submodule update
```
