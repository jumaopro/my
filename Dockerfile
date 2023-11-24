# 使用 Uountu 22.04 作为基础镜像
FRON ubuntu:22.04

# 安装 Shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/1ists/* /tmp/* /var/tmp/*

# 设圆 roor 用户的陆码为 “root"
RUN echo "rootzroot" | chpasswd
# 暴露端口
EXPOSE 22

#名动 Shellinabox
CMD ["/usr/bin/shellinaboxd","-t","-s","/:L0GIN"]
