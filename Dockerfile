# Ubuntu 14.04，Trusty Tahr（可靠的塔尔羊）发行版
FROM daocloud.io/ubuntu:trusty

MAINTAINER Captain codezm <codezm@163.com>

# 添加中科大 Ubuntu 镜像源
ADD zhongkeda.sources.list /etc/apt/sources.list

# APT 自动安装 PHP 相关的依赖包，如需其他依赖包在此添加
RUN apt-get update \
    && apt-get -y install \
        curl \
        wget \
        vim \
     # 用完包管理器后安排打扫卫生可以显著的减少镜像大小
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
