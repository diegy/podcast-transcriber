# Podcast Transcriber - 播客转文字工具

一键将小宇宙、Apple Podcasts 等播客链接转换为文字稿。

## 🌟 功能特点

- **多平台支持**：小宇宙、Apple Podcasts、RSS 订阅源
- **本地转录**：使用 Faster-Whisper 本地模型，无需上传音频到云端
- **AI 总结**：自动提取播客核心内容
- **说话人分离**：自动识别不同说话人
- **多种格式**：支持 Markdown、纯文本、SRT 字幕导出

## 🚀 快速开始

### 本地运行

```bash
# 1. 克隆项目
git clone https://github.com/diegy/podcast-transcriber.git
cd podcast-transcriber

# 2. 安装依赖
npm install

# 3. 创建 Python 虚拟环境
python3 -m venv venv
source venv/bin/activate
pip install faster-whisper

# 4. 配置环境变量
cp .env.example .env
# 编辑 .env 文件，添加 OpenAI API Key（可选，用于AI总结）

# 5. 启动服务
npm start

# 6. 访问
open http://localhost:3000
```

### Docker 部署

```bash
# 构建镜像
docker build -t podcast-transcriber .

# 运行容器
docker run -d -p 3000:3000 --env-file .env podcast-transcriber
```

## 🏗️ 技术架构

```
前端 (HTML5 + TailwindCSS)
    ↓
后端 (Node.js + Express)
    ↓
转录引擎 (Python Faster-Whisper)
```

## 📖 使用说明

1. 打开网页，粘贴播客链接
2. 点击"开始转换"
3. 等待转录完成（时长取决于播客长度）
4. 下载或复制文字稿

## 🔧 环境变量

| 变量 | 说明 | 必填 |
|------|------|------|
| `OPENAI_API_KEY` | OpenAI API Key（用于AI总结） | 可选 |
| `OPENAI_BASE_URL` | OpenAI API 基础URL | 可选 |
| `PORT` | 服务端口，默认3000 | 可选 |
| `WHISPER_MODEL` | Whisper模型，默认base | 可选 |

## 📝 支持的平台

- ✅ 小宇宙 (xiaoyuzhoufm.com)
- ✅ Apple Podcasts (podcasts.apple.com)
- ✅ 通用 RSS 订阅源
- ✅ 直接音频链接 (.mp3, .m4a, etc.)

## 📄 许可证

Apache 2.0 License

## 🙏 致谢

本项目基于 [wendy7756/podcast-transcriber](https://github.com/wendy7756/podcast-transcriber) 修改部署。
