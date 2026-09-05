class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v1.0.9/gbat-v1.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "c929b1a5af524df82ade47adc60f17a99efd128fce85ca0c77214bed4733087e"
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
