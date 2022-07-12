docker build -t x-ui .
docker run --name x-ui -it -d --net=host --restart always --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v ~/Internet/x-ui:/etc/x-ui -v ~/Internet/x-ray:/usr/local/x-ui/bin x-ui
