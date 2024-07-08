# 使用官方的 CentOS 镜像作为基础镜像
FROM centos:latest

# 更新并安装 EPEL 仓库和 Nginx
RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install nginx

# 创建一个简单的 HTML 文件
RUN echo '<!DOCTYPE html><html><head><title>Welcome to Nginx!</title></head><body><h1>Hello, Nginx on CentOS!</h1></body></html>' > /usr/share/nginx/html/index.html

# 暴露端口
EXPOSE 22280

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
