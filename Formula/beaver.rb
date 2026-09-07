class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.8/beaver-v1.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "fc06a0cd8a3ea41a8177b871bb79aadea6440c99b1ddf07e333a0b287d9e606c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.8/beaver-v1.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5f3f00e475e21686007de896448d6898c860f9645c79692fc052267b7b606d8"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.8/beaver-v1.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d882a0f4aa05036ea166f4b7fb7a33304fe64d15e04e3094250338e2c75307e"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
