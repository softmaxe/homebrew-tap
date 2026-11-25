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

For Apple silicon Macs. Add the tap, then run the install command for the package you want.

```sh
brew tap softmaxe/tap
```

| Package | Description | Minimum macOS | Install command |
| --- | --- | --- | --- |
| [ferry](Formula/ferry.rb) | Move the focused window to another Space | 26 | `brew install ferry` |
| [gbat](Formula/gbat.rb) | Check Logitech GPW2 battery and charging status | 11 | `brew install gbat` |
| [quota-bar](Casks/quota-bar.rb) | See Codex and Claude quotas, costs, and reset times in the menu bar | 14 | `brew install --cask quota-bar` |
| [whisper](Casks/whisper.rb) | Dictate on the desktop using self-hosted speech recognition | 12 | `brew install --cask whisper` |

[Releases](https://github.com/softmaxe/homebrew-tap/releases) · [Issues](https://github.com/softmaxe/homebrew-tap/issues) · [License](LICENSE) · [Third-party notices](THIRD_PARTY_NOTICES.md)
