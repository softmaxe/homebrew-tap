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

Homebrew formulae and casks maintained by [softmaxe](https://github.com/softmaxe).

## Packages

| Package | Type | Platform | Description |
| --- | --- | --- | --- |
| [`beaver`](https://github.com/softmaxe/beaver) | Formula | Apple silicon macOS; Linux ARM64/x86_64 | Rename subtitle files to match nearby videos |
| [`fetchdeck`](https://github.com/softmaxe/fetch-deck) | Formula | Apple silicon macOS | Download media with yt-dlp in the terminal |
| [`gbat`](https://github.com/softmaxe/gbat) | Formula | Apple silicon macOS 11+ | Read Logitech GPW2 battery and charging status |
| [`otter`](https://github.com/softmaxe/otter) | Formula | Apple silicon macOS | Review and run FFmpeg transcoding commands in the terminal |
| [`quota-bar`](https://github.com/softmaxe/quota-bar) | Cask | Apple silicon macOS 14+ | Show Codex and Claude quota, cost, and reset windows in the menu bar |

## Install

```bash
brew tap softmaxe/tap
brew install beaver
```

On Apple silicon macOS:

```bash
brew install fetchdeck gbat otter
```

On Apple silicon macOS Sonoma 14 or later:

```bash
brew install --cask quota-bar
```

Install only the packages supported by your operating system and CPU architecture. `beaver` is the only package in this tap that supports Linux.

## Reporting issues

Report tap or installation problems in this repository's [issues](https://github.com/softmaxe/homebrew-tap/issues). Report package bugs in the relevant package repository.
