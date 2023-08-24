#!/bin/sh
## This script merely runs an endless process
## This is useful to keep containers open for inspection during build development

#while true; do sleep 1000; done
tail -f /dev/null