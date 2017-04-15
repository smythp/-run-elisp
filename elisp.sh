#!/bin/bash

if [ -v $1 ]
then echo "Error: Please specify an elisp file to run.";
     exit 1;
else
    emacsclient --eval "(progn $(cat $1))"
fi
