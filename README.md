# homebrew-tap

[skillkit](https://github.com/alex-1q84/skillkit) 的 Homebrew tap。

## 安装

```bash
brew install alex-1q84/tap/skillkit
```

## 说明

- formula 由 [skillkit](https://github.com/alex-1q84/skillkit) 的 release workflow 在打 `v*` tag 时自动更新（版本号 + sha256），无需手动维护
- 当前 CI 只构建 Apple Silicon (arm64 macOS) 二进制，formula 用 `depends_on arch: :arm64` 限制了平台
