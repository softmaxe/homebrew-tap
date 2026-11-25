class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/homebrew-tap"
  url "https://github.com/softmaxe/homebrew-tap/releases/download/gbat-v0.0.5/gbat-v0.0.5-aarch64-apple-darwin.tar.gz"
  sha256 "b8b7b805ad602bc61c94ba6fb51155bc4d0956766991e4eefcb022f8124b7b06"

  livecheck do
    url :homepage
    strategy :git
    regex(/^gbat-v(\d+\.\d+\.\d+)$/i)
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "gbat"
    prefix.install "THIRD_PARTY_NOTICES.md", "rust-licenses"
  end

  test do
    assert_equal "gbat #{version}", shell_output("#{bin}/gbat --version").strip
  end
end
