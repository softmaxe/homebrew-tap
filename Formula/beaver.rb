class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.3/beaver-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "acaa27504267e730e8487dd140be60353c781a19415a5867007d5375e36fd089"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.3/beaver-v1.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7aee8d0bd60161843eb94156bc990218305452b09433622edfda20d8d00bd81"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.3/beaver-v1.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dbf9426a0a4c366563bd1b6a5aa9d1803f51ff282b512d7a048dbb307ed3339"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
