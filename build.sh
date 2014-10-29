#!/bin/bash

#set -x

mkdir -p locale/es/LC_MESSAGES
mkdir -p locale/it/LC_MESSAGES
msgfmt -o locale/es/LC_MESSAGES/$0.mo es.po
msgfmt -o locale/it/LC_MESSAGES/$0.mo it.po

echo 

./test.sh

export TEXTDOMAIN=$0
export TEXTDOMAINDIR=$(pwd)/locale

export LANGUAGE=es
./test.sh

export LANGUAGE=it
./test.sh

