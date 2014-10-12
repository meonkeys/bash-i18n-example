#!/bin/bash
mkdir -p locale/es/LC_MESSAGES
msgfmt -o locale/es/LC_MESSAGES/$0.mo es.po
echo Default locale:
echo ... $"Hello!"
echo ... $"Hello $USER!"
TEXTDOMAIN=$0
TEXTDOMAINDIR=$(pwd)/locale
echo Language set to Spanish:
echo ... $"Hello!"
echo ... $"Hello $USER!"

