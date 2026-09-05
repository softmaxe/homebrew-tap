class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.3/otter-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "fef031b7afdd12f5def7ee819d00908ba8c8d1ab95e50add69ffb7ad9a18dcca"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
