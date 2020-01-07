#!/bin/bash

OUTPUT=$(xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1)
CurrBright=$(xrandr --verbose --current | grep ^"$OUTPUT" -A5 | tail -n1)

BRIGHT="${CurrBright##* }"              # Get brightness level with decimal place
NEWBRIGHT=$(echo "$BRIGHT + $1" | bc)   # Sum current Brightness with first arg

[[ $(echo "$NEWBRIGHT > 1.0" | bc) = 1 ]] && NEWBRIGHT=1.0
[[ $(echo "$NEWBRIGHT < 0.1" | bc) = 1 ]] && NEWBRIGHT=0.1

xrandr --output $OUTPUT --brightness $NEWBRIGHT
