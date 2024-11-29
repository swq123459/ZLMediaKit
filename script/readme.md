```shell
curl -X POST -d ""  127.0.0.1:8804/index/api/version?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV&k=d
```

```shell
curl -X POST -H "Content-Type: application/json"   -d '{"vhost":"__defaultVhost__","app":"live","stream":"proxy","url":"rtsp://127.0.0.1:554/live/test","auto_close": true}' 127.0.0.1:8804/index/api/addStreamProxy?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
ffprobe rtsp://127.0.0.1:554/live/proxy
```

```shell
curl -X POST -H "Content-Type: application/json"   -d '{"src_url":"rtsp://127.0.0.1:554/live/test", "dst_url": "rtmp://127.0.0.1:1935/self/test", "timeout_ms": "5000", "enable_hls": false, "enable_mp4": false}' 127.0.0.1:8804/index/api/addFFmpegSource?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
```