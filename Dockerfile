FROM jrei/systemd-debian
RUN apt-get update \
    && apt-get install -y wget procps unzip\
    && awget https://github.com/XTLS/Xray-core/releases/download/v1.5.5/Xray-linux-64.zip
    && aunzip Xray-linux-64.zip -d x-ray
    && amv x-ray/xray x-ray/xray-linux-amd64
    && arm Xray-linux-64.zip
    && wget https://raw.githubusercontent.com/expfukck/Xx-ui/main/install.sh \
    && chmod 777 ./install.sh \
    && ./install.sh \
    && rm ./install.sh
