class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on "ffmpeg"
  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.2/otter-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "470375c295ba9ae31f03359ccbd186e15035dc500286cdf33acb82c31ac6fff5"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
