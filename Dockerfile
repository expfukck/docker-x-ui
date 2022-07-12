FROM jrei/systemd-debian

RUN apt-get update -y
RUN apt-get install -y wget procps unzip
RUN wget https://raw.githubusercontent.com/expfukck/Xx-ui/main/install.sh
RUN chmod 777 ./install.sh
RUN ./install.sh

RUN wget https://github.com/XTLS/Xray-core/releases/download/v1.5.5/Xray-linux-64.zip 
RUN unzip Xray-linux-64.zip -d x-ray 
RUN mv x-ray/xray x-ray/xray-linux-amd64 
RUN rm Xray-linux-64.zip 
