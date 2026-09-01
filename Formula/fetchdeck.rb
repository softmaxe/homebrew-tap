class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  license "MIT"

  depends_on "ffmpeg"
  depends_on :macos
  depends_on "yt-dlp"

  if Hardware::CPU.arm?
    url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.1/fetchdeck-v1.0.1-aarch64-apple-darwin.tar.gz"
    sha256 "30c578c887d53ed368f26b702e7b5fb2c9bfed8f68ca7aa22293c18b9c6014f1"
  else
    url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.1/fetchdeck-v1.0.1-x86_64-apple-darwin.tar.gz"
    sha256 "db1561620111e4b8fecb1a290292d3b626743e20c8ed5ae392deff9a31d22da9"
  end

  def install
    bin.install "fetchdeck"
    doc.install "README.md", "README.zh-CN.md", "LICENSE"
  end

  test do
    assert_predicate bin/"fetchdeck", :executable?
  end
end
