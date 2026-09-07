class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.6/otter-v1.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "4ee05c824d3dbac18cb6bc9b34934569cd66bcda37739c21cafc568c322c58b7"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
