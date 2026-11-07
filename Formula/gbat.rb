class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v0.0.2/gbat-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "034b184f5f8f5901cde149e76bdf9fa01548288fdbf95af1bf5899714046645c"
    end
  end

  def install
    bin.install "gbat"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "gbat #{version}", shell_output("#{bin}/gbat --version").strip
  end
end
