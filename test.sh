#!/bin/bash

function plurals() {
   COUNT=$1
   THERE=$(ngettext $"there is" $"there are" $COUNT)
   FRUIT=$(ngettext $"orange" $"oranges" $COUNT)

   echo $"Here $THERE $COUNT $FRUIT"
}

EMPTY_LANG=$"emptylang"
L=${LANGUAGE:-$EMPTY_LANG}
echo $(gettext "language set to $L")
echo
echo $"Hello!"
echo $"Bye $USER!"
plurals 0
plurals 1
plurals 4
echo
