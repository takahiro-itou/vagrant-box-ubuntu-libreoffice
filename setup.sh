#! /bin/bash  -xue

box_name='ubuntu-jammy64-libreoffice'
box_version='v1.1.0'
box_file="${box_name}.${box_version}.box"

# Account Name of Vagrant Cloud.
vc_user='takahiro-itou'

pushd  vagrant

vagrant  destroy -f  || exit $?
vagrant  up          || exit $?
vagrant  halt

vagrant  package   --output ../${box_file}  default

popd
set  +x

cat  << _EOF_  1>&2
To add package into box list, run:
_EOF_

cat  << _EOF_
vagrant  box  add  --name ${vc_user}/${box_name}  ${box_file}
_EOF_
