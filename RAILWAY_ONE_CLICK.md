# Railway 一键部署

由于 API 限制，请使用以下方式一键部署：

## 方式1：使用 Railway 模板（推荐）

点击下方按钮直接部署：

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=https://github.com/diegy/podcast-transcriber&envs=OPENAI_API_KEY,WHISPER_MODEL&OPENAI_API_KEY=your_openai_key&WHISPER_MODEL=base)

如果按钮不起作用，请手动复制以下链接到浏览器：
```
https://railway.app/new/template?template=https://github.com/diegy/podcast-transcriber
```

## 方式2：GitHub 集成部署

1. 访问 https://railway.app/new
2. 点击 "Deploy from GitHub repo"
3. 选择 `diegy/podcast-transcriber`
4. Railway 自动检测 Dockerfile 并部署

## 方式3：使用你的 Account Token

在 Railway 设置中添加 Token：
1. 登录 https://railway.app
2. 点击头像 → Account Settings
3. Tokens → New Token
4. 使用 Account Token: `654d4dc8-cc8b-43bd-8ee1-eee9a9e96d76`

## 部署后配置

1. 等待部署完成（约 5-10 分钟）
2. 获取自动分配的域名
3. 在 Variables 中添加（可选）：
   - `OPENAI_API_KEY` = your_key
   - `WHISPER_MODEL` = base

## 访问地址

部署完成后，域名格式为：
```
https://podcast-transcriber-production.up.railway.app
```
