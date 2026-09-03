<p align="center">
  <a href="https://github.com/Homebrew/brew.sh/blob/65c7b5b034e3d03169ac60073247634ef40fa9d0/assets/img/homebrew.svg">
    <img src="./assets/homebrew.svg" alt="Homebrew" width="96">
  </a>
</p>

<h1 align="center">homebrew-tap</h1>

<p align="center">
  <a href="./README.md"><kbd>English</kbd></a>
  <a href="./README.zh-CN.md"><kbd>简体中文</kbd></a>
</p>

[softmaxe](https://github.com/softmaxe) 维护的 Homebrew formula 和 cask。

## 软件包

| 软件包 | 类型 | 平台 | 用途 |
| --- | --- | --- | --- |
| [`beaver`](https://github.com/softmaxe/beaver) | Formula | Apple silicon macOS；Linux ARM64/x86_64 | 将字幕文件重命名为对应的视频文件名 |
| [`fetchdeck`](https://github.com/softmaxe/fetch-deck) | Formula | Apple silicon macOS | 在终端中使用 yt-dlp 下载媒体 |
| [`gbat`](https://github.com/softmaxe/gbat) | Formula | Apple silicon macOS 11+ | 读取 Logitech GPW2 电量和充电状态 |
| [`otter`](https://github.com/softmaxe/otter) | Formula | Apple silicon macOS | 在终端中查看并执行 FFmpeg 转码命令 |
| [`quota-bar`](https://github.com/softmaxe/quota-bar) | Cask | Apple silicon macOS 14+ | 在菜单栏查看 Codex 和 Claude 的用量、费用及重置时间 |

## 安装

```bash
brew tap softmaxe/tap
brew install beaver
```

在 Apple silicon macOS 上：

```bash
brew install fetchdeck gbat otter
```

在 Apple silicon macOS Sonoma 14 或更高版本上：

```bash
brew install --cask quota-bar
```

请根据操作系统和 CPU 架构选择支持的软件包；本 tap 中只有 `beaver` 支持 Linux。

## 问题反馈

Tap 或安装问题请在本仓库的 [issues](https://github.com/softmaxe/homebrew-tap/issues) 中反馈；软件问题请到对应项目仓库反馈。
