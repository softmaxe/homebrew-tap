class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.6/fetchdeck-v1.0.6-aarch64-apple-darwin.tar.gz"
  sha256 "1ce6684b0bd9f6f721c109e6bde91feb2cd33278a9d90be54abed8dc7f4ed502"
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
