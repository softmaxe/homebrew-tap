class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on "ffmpeg"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.0/otter-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "54ccc166bd359c6560b414a8c38b939f21730c03abeac500a19359beae6d68d6"
    end
    on_intel do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.0/otter-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "2bd4be3a48fd9fe624d43bda840e1abc1b4eb94e8fbe778e4bf363456ff369c3"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
