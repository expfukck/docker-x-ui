mkdir Internet
cd Internet
sudo docker build -t x-ui .
wget https://github.com/XTLS/Xray-core/releases/download/v1.5.2/Xray-linux-64.zip
unzip Xray-linux-64.zip -d x-ray
rm Xray-linux-64.zip
sudo docker run --name x-ui -d -p 54321:54321 -v ~/Internet/x-ui:/etc/x-ui -v ~/Internet/x-ray:/usr/local/x-ui/bin x-ui bash -c "x-ui start && sleep infinity"