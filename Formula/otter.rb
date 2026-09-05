class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.4/otter-v1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "433aa136ab8067560be567844d29bfb8f75d1177e6bfe205fce4b23e830331e9"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
