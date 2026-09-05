class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.5/beaver-v1.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "e2efc8ded9a0db0e5d535c8407660777d0935bdae7f5d7ac8ba186405529c379"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.5/beaver-v1.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfffb4a4f6df6290b9c98780e0511da59834290cbbda0b0f2dee83d4e784f4ea"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.5/beaver-v1.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f32e7922a013fd7bf6e04911ecbed7c9282ea5fde1206939b407a0dbd5b767a"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
