# 使用官方nginx镜像作为基础镜像
FROM nginx:alpine

# 设置维护者信息
LABEL maintainer="Fin-R1-Pro Team"

# 删除默认的nginx配置
RUN rm -rf /etc/nginx/conf.d/default.conf

# 复制自定义nginx配置
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 复制网站文件到nginx的html目录
COPY . /usr/share/nginx/html/

# 暴露80端口
EXPOSE 80

# 启动nginx
CMD ["nginx", "-g", "daemon off;"]

