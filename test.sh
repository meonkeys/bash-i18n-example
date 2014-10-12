#!/bin/bash
mkdir -p locale/es/LC_MESSAGES
msgfmt -o locale/es/LC_MESSAGES/$0.mo es.po
echo Default locale:
./messages.sh
TEXTDOMAIN=$0
TEXTDOMAINDIR=$(pwd)/locale
echo Language set to Spanish:
./messages.sh

