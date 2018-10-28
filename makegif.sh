#!/bin/sh

fps="60"
frame_delay=`echo "scale=4;100/$fps" | bc`
convert -delay $frame_delay -loop 0 *.png output.gif
