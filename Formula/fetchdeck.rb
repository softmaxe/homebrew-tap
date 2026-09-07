class Fetchdeck < Formula
  desc "Friendly terminal interface for yt-dlp"
  homepage "https://github.com/softmaxe/fetch-deck"
  url "https://github.com/softmaxe/fetch-deck/releases/download/v1.0.9/fetchdeck-v1.0.9-aarch64-apple-darwin.tar.gz"
  sha256 "c0244cdc716724c9eed4b60d124e351e1eec17743a93464adcd1e32cf8b7c7bb"
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
