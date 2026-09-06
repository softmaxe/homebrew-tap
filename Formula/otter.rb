class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.5/otter-v1.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "33406b0f930f60c3d0bf35cecb3240e50b7a7c06788f633fe69446ac56ed6eda"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
