class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v1.0.12/gbat-v1.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "31794ac7cc178eaa962b8b500eaa8414a371be9df8d3a10e6d054e11e7a8d0ee"
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
