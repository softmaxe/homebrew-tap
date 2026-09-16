class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v1.0.0/gbat-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "7389fa26bb876bdc901cb3bb9eb722961a54317534ae7297b8eba9753286807d"
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
