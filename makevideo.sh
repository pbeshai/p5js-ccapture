#!/bin/bash

outputName="output.mp4"
dimensions="540x540"
fps=30
frameName="%07d.png"
crf=17 # CRF should be between 17 and 28. Lower is higher quality

ffmpeg -r $fps -f image2 -s $dimensions -i $frameName -vcodec libx264 -crf $crf  -pix_fmt yuv420p $outputName
