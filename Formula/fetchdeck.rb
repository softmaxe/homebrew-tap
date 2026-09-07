class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.11/fetchdeck-v1.0.11-aarch64-apple-darwin.tar.gz"
  sha256 "1b32535e03e2acc1cc0d9ccd6944f2b8b0a8593c2f4300393f2c5e24a6ea3bef"
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
