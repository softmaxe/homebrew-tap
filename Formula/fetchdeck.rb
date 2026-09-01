class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  license "MIT"

  depends_on "ffmpeg"
  depends_on :macos
  depends_on "yt-dlp"

  if Hardware::CPU.arm?
    url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.2/fetchdeck-v1.0.2-aarch64-apple-darwin.tar.gz"
    sha256 "358d11e6966f20e539dea542ea38fa5d9c0e93032de94342fcc4f6eebde6ed31"
  else
    url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.2/fetchdeck-v1.0.2-x86_64-apple-darwin.tar.gz"
    sha256 "e10f7cd57065bb7135bd0d169268b53293f0ee4ee88b7fc5ab412e9bca6f34cf"
  end

  def install
    bin.install "fetchdeck"
    doc.install "README.md", "README.zh-CN.md", "LICENSE"
  end

  test do
    assert_predicate bin/"fetchdeck", :executable?
  end
end
