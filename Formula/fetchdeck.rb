class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.8/fetchdeck-v1.0.8-aarch64-apple-darwin.tar.gz"
  sha256 "5cab6a8237f1f66d094d3c65b5562682885c4514e1eaecc4f9804c2f5bb15a41"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on :macos
  depends_on "yt-dlp"

  def install
    bin.install "fetchdeck"
    doc.install "README.md", "README.zh-CN.md", "LICENSE"
  end

  test do
    assert_predicate bin/"fetchdeck", :executable?
  end
end
