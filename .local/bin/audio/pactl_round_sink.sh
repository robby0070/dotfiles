#!/bin/sh
let sinkToSet=$(select_new_sink $(pulseaudio_get_default.sh) $(pulseaudio_get_sinks.sh))
pactl set-default-sink $sinkToSet
paswitch_set_default.sh $sinkToSet
