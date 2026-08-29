class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.0/beaver-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "12fb3b88a7367796c25ce00e9393ad6d9e4755ce867d20115622fb0c8148eda2"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.0/beaver-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "2a9b84879191d15a30eddbb9d338b6e4b1a0eaa5e902a5c671c75a7b43930773"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.0/beaver-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30194f3908ae27a9f4f13b2fb42fb63b6fc343d37e1a3ce53831466bce8289dc"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.0/beaver-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "520bed224a9292e8cfa16689b69b88df4baec299fff342aa58616ceb9e961d5c"
    end
  end

  def install
    bin.install buildpath.glob("beaver-*/beaver").first
  end

  test do
    system bin/"beaver", "--help"
  end
end
