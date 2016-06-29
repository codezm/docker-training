# 使用 Dockerfile 创建镜像

### 创建镜像 images

    docker build -t ubuntu:base .

### 查看创建的镜像
    
    docker images

### 创建容器 container 名字「 codezm 」并进入交互界面

    docker run -it --name codezm ubuntu:base
    # 退出 exit

### 查看已创建的容器

    docker ps -a

### 重新启动容器
    
    docker start codezm
    # 使用 `docker ps` 来查看后台或已启动的容器
    docker exec -it codezm /bin/bash

### 查看已安装工具

    whereis vim
    whereis curl
    whereis wget

