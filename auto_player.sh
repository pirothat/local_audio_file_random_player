#!/bin/bash
MUSIC_DIR="/Volumes/ESD-EPA"

while true
do
  # find + shuf の出力を "while read -r f" で1行ずつ受け取る
  find "$MUSIC_DIR" -type f -name '*.flac' 2>/dev/null | shuf | \
  while IFS= read -r f
  do
    mpv --no-video --term-status-msg="Playing: ${f}" "$f"
  done
done
