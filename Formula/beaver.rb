class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.6/beaver-v1.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "d939a46d71c51d722801dcf721e310ae9f4debd7ae833d2b6b1669f0b635d5dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.6/beaver-v1.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7dfb4533b3027b0d3e5a4a9fc107e9e2d40a5613f5bb60000ecea641bf476c0"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.6/beaver-v1.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1dffaa8331e6117a867a854861613150ed8ae2f98a401e5dcc4f8776eb3772e4"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
