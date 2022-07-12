mkdir Internet
cd Internet
sudo docker build -t x-ui .
wget https://github.com/XTLS/Xray-core/releases/download/v1.5.5/Xray-linux-64.zip
unzip Xray-linux-64.zip -d x-ray
mv x-ray/xray x-ray/xray-linux-amd64
rm Xray-linux-64.zip
sudo docker run --name x-ui -d -p 54321:54321 --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v ~/Internet/x-ui:/etc/x-ui -v ~/Internet/x-ray:/usr/local/x-ui/bin x-ui
