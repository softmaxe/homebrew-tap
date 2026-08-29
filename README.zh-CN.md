<p align="center">
  <a href="./README.md"><kbd>English</kbd></a>
  <a href="./README.zh-CN.md"><kbd>简体中文</kbd></a>
</p>

# homebrew-tap

由 softmaxe 维护的 Homebrew tap。

这个 tap 用来分发预编译的二进制包。每个 formula 对应一个独立仓库的 release，工具的具体用法和介绍以各自仓库为准。

## 已收录

| Formula | 仓库 |
| --- | --- |
| `beaver` | [softmaxe/beaver](https://github.com/softmaxe/beaver) |

后续新增 formula 时在此表追加即可，tap 本身不需要额外配置。

## 安装

先 tap，再安装需要的 formula：

```bash
brew tap softmaxe/tap
brew install <formula>
```

例如：

```bash
brew install beaver
```

也可以不先 tap：

```bash
brew install softmaxe/tap/<formula>
```

更新：

```bash
brew update
brew upgrade <formula>
```

验证：

```bash
brew test <formula>
<formula> --help
```

## 工作方式

每个 `Formula/<name>.rb` 指向对应仓库 release 里的压缩包和 `SHA256`。`brew install` 时会根据系统和架构下载对应包，校验后链接到 Homebrew 前缀，不需要在本机编译。

版本号从 release 链接中推断，与上游标签保持一致。

## 反馈

安装或校验失败等 tap 相关问题，提在这个仓库。工具本身的使用问题，请到对应工具的仓库提 issue。
