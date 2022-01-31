FROM jrei/systemd-debian
RUN apt-get update \
    && apt-get install -y wget procps \
    && wget https://raw.githubusercontent.com/vaxilu/x-ui/main/install.sh \
    && chmod 777 ./install.sh \
    && ./install.sh \
    && rm ./install.sh
EXPOSE 54321