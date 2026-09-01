class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  license "AGPL-3.0-only"

  depends_on "ffmpeg"
  depends_on :macos
  depends_on "yt-dlp"

  if Hardware::CPU.arm?
    url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.3/fetchdeck-v1.0.3-aarch64-apple-darwin.tar.gz"
    sha256 "aec1a4ffe3b05e69d2b603133b042b55d48e615cfbfdb698174ea873294eee00"
  else
    url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.3/fetchdeck-v1.0.3-x86_64-apple-darwin.tar.gz"
    sha256 "00ed256f5928ba2c0d4d310a951c147b9eec7216b9bfdbc20a840810888aa61e"
  end

  def install
    bin.install "fetchdeck"
    doc.install "README.md", "README.zh-CN.md", "LICENSE"
  end

  test do
    assert_predicate bin/"fetchdeck", :executable?
  end
end
