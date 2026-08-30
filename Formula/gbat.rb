class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v1.0.5/gbat-v1.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "984f670e2c76c54ad691907b7b2766ebe73f091e475c53542edf43cf0cf6b62c"
    end

    on_intel do
      url "https://github.com/softmaxe/gbat/releases/download/v1.0.5/gbat-v1.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "11164d30b51155f80e817ac9d021fca347d7d01ed11e2c2305eca12c5a1de7b5"
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
