# 使用 Node.js 官方镜像
FROM node:18-slim

# 安装 Python 和 ffmpeg
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装 Node.js 依赖
RUN npm install --production

# 复制项目文件
COPY . .

# 创建 Python 虚拟环境并安装依赖
RUN python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir faster-whisper

# 创建临时目录
RUN mkdir -p server/temp

# 暴露端口
EXPOSE 3000

# 启动命令
CMD ["npm", "start"]
