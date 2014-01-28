#!/bin/bash

# Simple script to convert Markdown into HTML

# find Markdown files
for fin in $( ls *.md); do
  echo in: $fin

  # strip path
  fout=$(basename "$fin")

  # replace extension
  fout="${fout%.*}".html

  echo out: $fout.html

  cmd="pandoc $fin -o $fout -c buttondown.css"
  echo $cmd

  # run command
  $cmd
done
