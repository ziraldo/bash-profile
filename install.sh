#!/bin/bash

set -e

mkdir -p ~/.bash_completion.d
cp bash_completion.d/* ~/.bash_completion.d/.
mkdir -p ~/.bash_extensions.d
cp bash_extensions.d/* ~/.bash_extensions.d/.
mkdir -p ~/.bash_misc_files
cp bash_misc_files/* ~/.bash_misc_files

if ! grep -q ".bash_completion.d" ~/.bashrc ; then
    echo -e "for file in ~/.bash_completion.d/* ; do\n    source \"\$file\"\ndone" >> ~/.bashrc
fi
if ! grep -q ".bash_extensions.d" ~/.bashrc ; then
    echo -e "for file in ~/.bash_extensions.d/* ; do\n    source \"\$file\"\ndone" >> ~/.bashrc
fi
