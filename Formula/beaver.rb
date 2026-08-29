class Beaver < Formula
  desc "Rename subtitle files to match the videos beside them"
  homepage "https://github.com/softmaxe/beaver"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.1/beaver-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "aeba341d1682a421c48a555c0c732f2948f3adb222917d3ae1f366d744fb4b9e"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.1/beaver-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "a6a68beb5d2cd9787564eb3f310b5af4a5cab8e0bef84f3111595fdb931e8731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.1/beaver-v1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fad64026aef4a83b747e59707ccabfd690efe79326b8ffc7a2d5e0f4a57e104d"
    end
    on_intel do
      url "https://github.com/softmaxe/beaver/releases/download/v1.0.1/beaver-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df7e68b110f843f2b6c0fdd7895c41ed49a81ff495f4388d39bd320a8f343326"
    end
  end

  def install
    bin.install "beaver"
  end

  test do
    system bin/"beaver", "--help"
  end
end
