<p align="center">
  <a href="./README.md"><kbd>English</kbd></a>
  <a href="./README.zh-CN.md"><kbd>简体中文</kbd></a>
</p>

# homebrew-tap

Homebrew tap for projects maintained by softmaxe.

This tap distributes prebuilt binaries via Homebrew. Each formula or cask tracks releases from its own repository. For usage and details of a specific tool, see that tool's repository.

## Packages

| Package | Type | Repo |
| --- | --- | --- |
| `beaver` | formula | [softmaxe/beaver](https://github.com/softmaxe/beaver) |
| `agent-usage-bar` | cask | [softmaxe/agent-usage-bar](https://github.com/softmaxe/agent-usage-bar) |

No other setup is needed for the tap itself.

## Install

Tap once, then install any package from this tap:

```bash
brew tap softmaxe/tap
brew install <formula>
brew install --cask <cask>
```

For example:

```bash
brew install beaver
brew install --cask agent-usage-bar
```

You can also install without tapping first:

```bash
brew install softmaxe/tap/<formula>
brew install --cask softmaxe/tap/<cask>
```

Update:

```bash
brew update
brew upgrade <formula>
brew upgrade --cask <cask>
```

Verify:

```bash
brew test <formula>
<formula> --help
brew list --cask <cask>
```

## How it works

Each `Formula/<name>.rb` or `Casks/<name>.rb` points to a GitHub release archive and its `SHA256`. On `brew install`, Homebrew downloads the archive that matches your OS and CPU, verifies the checksum, and links the binary or app into your prefix. No build toolchain is required on your machine.

Versions are inferred from the release URL and stay in sync with the upstream tag.

## Issues

For install problems such as checksum mismatches or cask failures, open an issue in this repository. For tool behavior, report in that tool's repository.
