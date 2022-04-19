#!/bin/bash
awk 'NF' quotes.txt > answer1.txt

awk '!a[$0]++' quotes.txt > answer2.txt