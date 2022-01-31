FROM ubuntu:20.04
RUN apt-get update \
    && apt-get install -y wget procps systemctl \
    && wget https://raw.githubusercontent.com/vaxilu/x-ui/main/install.sh \
    && chmod 777 ./install.sh \
    && ./install.sh \
    && rm ./install.sh
EXPOSE 54321