#!/bin/bash
<< help
this is a multilne comment
help
src=$1
dest=$2
timespan=$(date '+%Y-%m-%d-%H-%M')

mkdir -p "$dest"

zip -r "$dest/backup-$timespan.zip" "$src" > /dev/null
aws s3 sync "$dest" s3://zrkbp
echo "Backup completed: $dest/backup-$timespan.zip"
