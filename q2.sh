#!/bin/bash
grep . $1 | awk -F'~' '{print $2 " once said, \"" $1 "\""}' > $2