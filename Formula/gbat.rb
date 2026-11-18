class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v0.0.3/gbat-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "6a8e9449a93a4048463d64179afaab39c6618e4f2ce8a800a0f64554ca2997bd"
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
