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

tar -cvf backup.tar $1/*
gzip backup.tar

echo "Backup complete..."
