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
| [`ferry`](https://github.com/softmaxe/ferry) | Formula | Apple silicon macOS 26+ | 把焦点窗口移到另一个 Space |
| [`gbat`](https://github.com/softmaxe/gbat) | Formula | Apple silicon macOS 11+ | 读取 Logitech GPW2 电量和充电状态 |
| [`quota-bar`](https://github.com/softmaxe/quota-bar) | Cask | Apple silicon macOS 14+ | 在菜单栏查看 Codex 和 Claude 的用量、费用及重置时间 |
| [`whisper`](https://github.com/softmaxe/whisper) | Cask | Apple silicon macOS 12+ | 自托管语音识别的桌面听写工具 |

## 安装

```bash
brew tap softmaxe/tap
```

所有软件包都需要 Apple silicon macOS：

```bash
brew install gbat
```

在 macOS Monterey 12 或更高版本上：

```bash
brew install --cask whisper
```

在 macOS Sonoma 14 或更高版本上：

```bash
brew install --cask quota-bar
```

在 macOS Tahoe 26 或更高版本上：

```bash
brew install ferry
```

## 问题反馈

Tap 或安装问题请在本仓库的 [issues](https://github.com/softmaxe/homebrew-tap/issues) 中反馈；软件问题请到对应项目仓库反馈。
