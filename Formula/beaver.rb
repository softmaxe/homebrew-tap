class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.7/beaver-v1.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "bd3a5db985d96a0b9a8321ff6a5388f8f72e103b61fc1a128b2c1caea96e433a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.7/beaver-v1.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3210ca05804e2efc08e9d1051e1513b97f2c062d92e3bf24678a39c2b22e84ec"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.7/beaver-v1.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7729a8c87434dcdbc5303f75ca5efaee7042ed98fa13bfded13cad9ad3f9380a"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
