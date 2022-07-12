# X-UI Docker魔改版

> 基于 https://github.com/vaxilu/x-ui 制作的 Docker镜像，原汁原味，增加了拉取最新版本的X-RAY。

x-ui 使用说明：https://github.com/vaxilu/x-ui/blob/main/README.md

### Docker版本说明

创建容器：`build.sh`

注意：54321 是管理页面访问端口，本地端口也可看自己需求改动。

### 启动说明
```
git clone https://github.com/expfukck/docker-x-ui.git && mv docker-x-ui x-ui && cd x-ui && bash build.sh
```
进入x-ui容器进行安装
```
docker exec -it x-ui bash
wget -N --no-check-certificate https://raw.githubusercontents.com/expfukck/Xx-ui/main/install.sh && bash install.sh
```
