#! /bin/sh
for dotfile in `ls -1dB .*|grep -v .*\.swp$`
do
  if ! [ -e ~/$dotfile ] ; then
    ln -s `pwd`/$dotfile ~/$dotfile
  fi
done
