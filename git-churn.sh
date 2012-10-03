#!/bin/bash
git log --all -M -C --name-only --format='format:' "$@" | 
sort | grep -v '^$' | uniq -c | sort | tail -n 5 
