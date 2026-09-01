class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/FetchDeck"
  license "MIT"

  depends_on "ffmpeg"
  depends_on :macos
  depends_on "yt-dlp"

  if Hardware::CPU.arm?
    url "https://github.com/softmaxe/FetchDeck/releases/download/v1.0.0/fetchdeck-v1.0.0-aarch64-apple-darwin.tar.gz"
    sha256 "b43ce41d20d03cf555c63ac0f1f850d679f4776284f855c6bcc03cbc73b8c6e3"
  else
    url "https://github.com/softmaxe/FetchDeck/releases/download/v1.0.0/fetchdeck-v1.0.0-x86_64-apple-darwin.tar.gz"
    sha256 "34dd4702cfb63827e9fc526e1ca221168361caa3b2c10dc6a32272be938358d0"
  end

  def install
    bin.install "fetchdeck"
    doc.install "README.md", "README.zh-CN.md", "LICENSE"
  end

  test do
    assert_predicate bin/"fetchdeck", :executable?
  end
end
