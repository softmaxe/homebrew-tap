<p align="center">
  <a href="./README.md"><kbd>English</kbd></a>
  <a href="./README.zh-CN.md"><kbd>简体中文</kbd></a>
</p>

# homebrew-tap

Homebrew tap for projects maintained by softmaxe.

This tap distributes prebuilt binaries via Homebrew. Each formula tracks releases from its own repository. For usage and details of a specific tool, see that tool's repository.

## Formulae

| Formula | Repo |
| --- | --- |
| `beaver` | [softmaxe/beaver](https://github.com/softmaxe/beaver) |

Add more rows here as new formulae land. No other setup is needed for the tap itself.

## Install

Tap once, then install any formula from this tap:

```bash
brew tap softmaxe/tap
brew install <formula>
```

For example:

```bash
brew install beaver
```

You can also install without tapping first:

```bash
brew install softmaxe/tap/<formula>
```

Update:

```bash
brew update
brew upgrade <formula>
```

Verify:

```bash
brew test <formula>
<formula> --help
```

## How it works

Each `Formula/<name>.rb` points to a GitHub release archive and its `SHA256`. On `brew install`, Homebrew downloads the archive that matches your OS and CPU, verifies the checksum, and links the binary into your prefix. No build toolchain is required on your machine.

Versions are inferred from the release URL and stay in sync with the upstream tag.

## Issues

For formula problems such as install failures or checksum mismatches, open an issue in this repository. For tool behavior, report in that tool's repository.
