# homebrew-tap

Homebrew tap for [beaver](https://github.com/softmaxe/beaver).

beaver renames subtitle files to match the videos in the same folder. It runs locally, never uploads files, and works from a terminal UI or CLI.

## Install

```bash
brew tap softmaxe/tap
brew install beaver
```

Or in one step:

```bash
brew install softmaxe/tap/beaver
```

Update:

```bash
brew update
brew upgrade beaver
```

## What the formula does

The formula downloads the prebuilt archive from the beaver release page and installs the `beaver` binary to your Homebrew prefix. No Rust toolchain is needed.

Current version tracks `softmaxe/beaver` releases. The archive URL and SHA256 are updated automatically when a new tag is published.

## Verify

```bash
beaver --help
brew test beaver
```

## Issues

Report problems with the formula here. Report problems with beaver itself in the [main repo](https://github.com/softmaxe/beaver/issues).
