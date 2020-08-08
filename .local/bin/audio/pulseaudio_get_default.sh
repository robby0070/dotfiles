#!/bin/sh
pacmd list-sinks short | grep '*' | sed 's/  \* index: //'
