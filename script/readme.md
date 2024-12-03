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

## tdu
```sh
# view
curl -X POST -H "Content-Type: application/json"   -d '{"method":"view","args":{"catalog":"access"}}' 127.0.0.1:8804/index/api/tdu?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
# version
curl -X POST -H "Content-Type: application/json"   -d '{"method":"version"}' 127.0.0.1:8804/index/api/tdu?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
# login
curl -X POST -H "Content-Type: application/json"   -d '{"method":"login","args":{"user":"admin", "password": "Tisson#xzk123!", "port": "8000", "type": "19000", "id": "hk_device", "ip": "172.16.34.73"}}' 127.0.0.1:8804/index/api/tdu?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
# real
curl -X POST -H "Content-Type: application/json"   -d '{"method":"real","args":{"id":"hk_device", "relayType": "http-ts", "type": "19000", "channel": "1", "streamLinkMode": "0"}}' 127.0.0.1:8804/index/api/tdu?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
# real fetch
curl -X POST -H "Content-Type: application/json"   -d '{"method":"real","args":{"type": "fetch", "url": "/workspace/zl/video-sample/hkps/hkTalk.ps"}}' 127.0.0.1:8804/index/api/tdu?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
# proxy
curl -X POST -H "Content-Type: application/json"   -d '{"vhost":"__defaultVhost__","app":"live","stream":"proxy","url":"http://127.0.0.1:15543/617350198/2fff48a9-a14b-4005-afad-219594980627.live.ts"}' 127.0.0.1:8804/index/api/addStreamProxy?secret=P4SO2MD4Y0GKsOq7WyEEMTpffisQzqVV
ffprobe http://127.0.0.1:8804/live/proxy.live.ts
```