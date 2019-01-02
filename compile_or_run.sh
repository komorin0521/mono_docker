#!/bin/bash

echo $@

if [ ${1} == "mcs" ]
then
  mcs ${@: 2: $#}
elif [ ${1} == "mono" ]
then
  mono ${@: 2:$#}
else
  echo -e "\e[31mfirst arg must be mcs or mono, but $1\e[m"
  exit 1
fi
