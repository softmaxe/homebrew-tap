class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.4/beaver-v1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "4e4cba8659ec8cd5deb44d40f6e262599fc367b42dd5d52df539c61324ba2a8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.4/beaver-v1.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "931034977070b321f5cdb90fb52e7add7c5bad13a845513df00092fb3f969cb2"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.4/beaver-v1.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7555e36657f12147ae081b83d2d6ef9816bbac5bcf76705d64d5bf70172340a6"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
