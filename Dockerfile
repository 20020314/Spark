FROM debian:stable
#添加维护信息
LABEL maintainer="chaikair@163.com"
#升级系统
RUN apt update -y
#设置运行端口
EXPOSE 8000
#设置工作目录
WORKDIR /server
#复制程序文件
COPY ./config.json /server
COPY ./built /server
COPY ./releases/* /server
#容器启动命令
CMD ["bash", "./server*" ]
