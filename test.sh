#!/bin/bash
mkdir -p locale/es/LC_MESSAGES
msgfmt -o locale/es/LC_MESSAGES/test.sh.mo es.po
echo Default locale:
echo ... $"Hello!"
TEXTDOMAIN=$0
TEXTDOMAINDIR=`pwd`/locale
echo Language set to Spanish:
echo ... $"Hello!"
