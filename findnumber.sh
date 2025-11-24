#!/bin/bash
# print number of letters in word

x=malasiaandnewzeand

grep -o "a" <<<"$x" | wc -l