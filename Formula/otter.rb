class Otter < Formula
  desc "Terminal interface for FFmpeg transcoding"
  homepage "https://github.com/softmaxe/otter"

  depends_on "ffmpeg"
  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/otter/releases/download/v1.0.1/otter-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "c4b8816eb4796cf23b94d2f85185e87dd3e9ff8606ea1df024b56b24a2b5dd7b"
    end
  end

  def install
    bin.install "otter"
  end

  test do
    assert_predicate bin/"otter", :executable?
  end
end
