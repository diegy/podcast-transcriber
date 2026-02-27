# Railway 部署指南

## 一键部署

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template)

## 手动部署步骤

### 1. 登录 Railway
访问 https://railway.app 并登录

### 2. 创建新项目
1. 点击 "New Project"
2. 选择 "Deploy from GitHub repo"
3. 选择 `diegy/podcast-transcriber` 仓库

### 3. 配置环境变量
在项目设置中添加以下环境变量：

| 变量名 | 值 | 说明 |
|--------|-----|------|
| `OPENAI_API_KEY` | your_openai_key | OpenAI API Key（可选，用于AI总结） |
| `OPENAI_BASE_URL` | https://api.openai.com/v1 | OpenAI API 地址 |
| `PORT` | 3000 | 服务端口 |
| `WHISPER_MODEL` | base | Whisper 模型大小 |

### 4. 部署
Railway 会自动检测 Dockerfile 并部署。

### 5. 获取域名
部署完成后，Railway 会自动分配一个域名，如：
```
https://podcast-transcriber-production.up.railway.app
```

## 前端配置

部署完成后，修改前端 API 地址：

1. 打开 `public/script.js`
2. 找到 API 地址配置
3. 修改为 Railway 分配的域名

## 注意事项

- 免费版有 500 小时/月的运行时间限制
- 首次部署需要下载 Whisper 模型，可能需要几分钟
- 建议开启自动部署，推送代码后自动更新
