#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 from:dirname to:dirname"
  exit 1
fi

if [ ! -e $2 ]; then
  mkdir $2
else
  echo "The directory $1 already exists"
fi

cd $2

tarfn="backup-"`date +%F`.tar

tar -cvf $tarfn $1/*
gzip $tarfn

echo "Backup complete..."
