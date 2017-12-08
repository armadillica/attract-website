#!/bin/bash

./gulp

declare -a arr=("css" "img" "js" "vendor" "index.html")

for i in "${arr[@]}"
do
   echo "Syncing $i"
   rsync -auv --exclude=.DS_Store ./"$i" armadillica@attract.studio:/home/armadillica/attract.studio
done
