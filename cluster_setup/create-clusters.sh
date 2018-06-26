#!/bin/bash

for yamlfile in `find $PWD/*/*.yml` ; do
  peg up $yamlfile
  wait
done


for dir in `find $PWD/* -type d` ; do
  $dir/install.sh
done

# for each cluster, there should be master.yml and workers.yml files in the corresponding folder
