#!/bin/bash
rm combined.pub
for pub in *pub; do
  name=$(echo $pub | sed 's/\.pub$//g')
  echo "# $name" >> combined.pub
  cat $pub >> combined.pub
done

