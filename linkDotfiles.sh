#! /bin/sh
for dotfile in `git ls-files .\*`
do
  if ! [ -e ~/$dotfile ] ; then
    echo ln -s `pwd`/$dotfile ~/$dotfile
    ln -s `pwd`/$dotfile ~/$dotfile
  fi
done
