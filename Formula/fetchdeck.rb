class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/FetchDeck"
  license "MIT"

  depends_on "ffmpeg"
  depends_on :macos
  depends_on "yt-dlp"

  if Hardware::CPU.arm?
    url "https://github.com/softmaxe/FetchDeck/releases/download/v0.1.2/fetchdeck-v0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "2ed2c6c3299ce05105ac7ab35c6a93ca0fb1893eca611c2905778794c6eaae1c"
  else
    url "https://github.com/softmaxe/FetchDeck/releases/download/v0.1.2/fetchdeck-v0.1.2-x86_64-apple-darwin.tar.gz"
    sha256 "a7bdc6c21f6ce94121f786120e9629719361d84811beee53b9ae0d935af074b4"
  end

  def install
    bin.install "fetchdeck"
    doc.install "README.md", "README.zh-CN.md", "LICENSE"
  end

  test do
    assert_predicate bin/"fetchdeck", :executable?
  end
end
