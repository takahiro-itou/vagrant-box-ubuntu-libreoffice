#! /bin/bash  -xue

boxFile='ubuntu-libreoffice.box'
boxName='ubuntu-focal64-libreoffice'

# Account Name of Vagrant Cloud.
vcUser='takahiro-itou'

pushd  vagrant

vagrant  destroy -f  || exit $?
vagrant  up          || exit $?
vagrant  halt

vagrant  package   --output ../${boxFile}  default

popd
set  +x

cat  << _EOF_  1>&2
To add package into box list, run:
_EOF_

cat  << _EOF_
vagrant  box  add  --name ${vcUser}/${boxName}  ${boxFile}
_EOF_
