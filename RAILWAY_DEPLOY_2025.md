# Railway 部署指南（2025最新版）

## 步骤1：登录 Railway
1. 访问 https://railway.app
2. 点击 "Login" 或 "Get Started"
3. 使用 GitHub 账号登录

## 步骤2：创建新项目
登录后，点击：
- **"New Project"** 按钮

## 步骤3：选择部署来源
在弹出的选项中，选择：
- **"Deploy from GitHub"** （从 GitHub 部署）

如果看不到这个选项，尝试：
- **"Empty Project"** → 然后点击 **"Create Service"** → **"GitHub Repo"**

## 步骤4：连接 GitHub 仓库
1. 授权 Railway 访问你的 GitHub 账号（如果还没授权）
2. 在仓库列表中找到 `diegy/podcast-transcriber`
3. 点击选择该仓库

## 步骤5：自动部署
Railway 会自动：
1. 检测 Dockerfile
2. 构建镜像
3. 部署服务

等待部署完成（首次约 5-10 分钟，需要下载 Whisper 模型）

## 步骤6：配置环境变量（可选）
1. 点击部署好的服务
2. 进入 **"Variables"** 标签
3. 添加以下变量：
   - `OPENAI_API_KEY` = your_openai_api_key（用于AI总结，可选）
   - `WHISPER_MODEL` = base（默认）

## 步骤7：获取访问地址
1. 部署完成后，点击 **"Settings"**
2. 找到 **"Public Domain"** 或 **"URL"**
3. 这就是你的访问地址，格式如：
   ```
   https://podcast-transcriber-production.up.railway.app
   ```

## 常见问题

### Q: 看不到 GitHub 仓库？
A: 需要先在 Railway 设置中连接 GitHub 账号：
   - 点击头像 → Account Settings → Integrations → Connect GitHub

### Q: 部署失败？
A: 检查日志：
   - 点击服务 → Deployments → 查看最新部署日志

### Q: 如何更新代码？
A: 推送代码到 GitHub 后，Railway 会自动重新部署

## 替代方案：使用 Railway CLI

如果 Web 界面无法使用，可以用命令行：

```bash
# 安装 CLI
npm install -g @railway/cli

# 登录
railway login

# 进入项目目录
cd podcast-transcriber

# 初始化并部署
railway init
railway up
```

## 部署完成后的地址

部署成功后，你的应用将可以通过以下地址访问：
```
https://[服务名]-[环境名].up.railway.app
```

例如：
```
https://podcast-transcriber-production.up.railway.app
```
