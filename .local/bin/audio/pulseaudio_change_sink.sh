#!/bin/sh
let currSink=$(pulseaudio_get_default.sh)
echo $currSink
let sinkNumber=$(pulseaudio_get_sink_number.sh)
echo $sinkNumber
