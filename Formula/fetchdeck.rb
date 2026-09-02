class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.5/fetchdeck-v1.0.5-aarch64-apple-darwin.tar.gz"
  sha256 "586ff211ad45ae6ebd29612d1bd8ef69716da07e1fec2a1104e34ac4265f6055"
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
