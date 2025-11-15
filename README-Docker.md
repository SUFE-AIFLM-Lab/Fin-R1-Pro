# Docker部署指南

## 前置要求

- Docker Engine 20.10+
- Docker Compose 2.0+

## 快速开始

### 1. 构建并启动服务

```bash
docker-compose up -d
```

### 2. 访问网站

打开浏览器访问：`http://localhost` 或 `http://your-server-ip`

### 3. 查看日志

```bash
docker-compose logs -f
```

### 4. 停止服务

```bash
docker-compose down
```

## 高级配置

### 修改端口

编辑 `docker-compose.yml`，修改端口映射：

```yaml
ports:
  - "8080:80"  # 将80改为8080或其他端口
```

### 使用自定义域名

编辑 `nginx.conf`，修改 `server_name`：

```nginx
server_name your-domain.com;
```

### 生产环境部署

1. 确保防火墙开放相应端口
2. 建议使用反向代理（如Nginx、Caddy）处理SSL/TLS
3. 如果需要实时更新，可以取消注释 `docker-compose.yml` 中的 volumes 配置

## 故障排查

### 查看容器状态

```bash
docker-compose ps
```

### 进入容器调试

```bash
docker-compose exec web sh
```

### 重新构建

```bash
docker-compose build --no-cache
docker-compose up -d
```

