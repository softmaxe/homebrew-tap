class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.9/beaver-v1.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "9d7e30077c96a9f23efa2876a95f43da15ce2297dbbe26dabe074c6a4245fd52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.9/beaver-v1.0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0bc6707536464172cc5a908ba4b4cdb2df9633ddb8760d46b929e80804b952ff"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.9/beaver-v1.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88989a48e116bbdd4cbbcf131037b0ab23ecd6f42587dcdbe22426ff655a186c"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
