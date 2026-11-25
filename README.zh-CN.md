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

适用于 Apple silicon Mac。先添加 tap，再运行所需软件包的安装命令。

```sh
brew tap softmaxe/tap
```

| 软件包 | 用途 | 最低 macOS 版本 | 安装命令 |
| --- | --- | --- | --- |
| [ferry](Formula/ferry.rb) | 将当前窗口移到另一个桌面空间 | 26 | `brew install ferry` |
| [gbat](Formula/gbat.rb) | 查看 Logitech GPW2 的电量和充电状态 | 11 | `brew install gbat` |
| [quota-bar](Casks/quota-bar.rb) | 在菜单栏查看 Codex 和 Claude 的额度、费用及重置时间 | 14 | `brew install --cask quota-bar` |
| [whisper](Casks/whisper.rb) | 使用自托管语音识别服务进行桌面听写 | 12 | `brew install --cask whisper` |

[版本下载](https://github.com/softmaxe/homebrew-tap/releases) · [问题反馈](https://github.com/softmaxe/homebrew-tap/issues) · [许可证](LICENSE) · [第三方声明](THIRD_PARTY_NOTICES.md)
