#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit
fi

index=$1
ey ssh "sudo -i eybackup -e mysql --download ${index}:minwoo_poll" -e oasis
