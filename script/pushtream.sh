#!/bin/bash

ffmpeg -re -stream_loop -1 -i \
 /workspace/zl/video-sample/standard/jellyfish-3-mbps-hd-h264.mp4 \
 -c copy -f flv  rtmp://127.0.0.1:1935/live/test.flv

ffprobe rtsp://127.0.0.1:554/live/test