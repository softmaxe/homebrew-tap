class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on arch: :arm64
  depends_on "ffmpeg"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.7/otter-v1.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "8e750f7b541e7f2b3bc598d83e653f034f9f36bb87d1af379ac0aad7feb818ec"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
