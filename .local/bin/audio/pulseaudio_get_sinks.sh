#!/bin/sh
pacmd list-sinks short | grep 'index: ' | sed 's/  \* index: //' | sed 's/    index: //'
