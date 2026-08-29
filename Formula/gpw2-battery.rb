class Gpw2Battery < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gpw2-battery"
  license "AGPL-3.0-only"

  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gpw2-battery/releases/download/v1.0.2/gpw2-battery-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "8642b96611a2ab800f267681f9301ee36067abdf07b3b8b193bcd1df47e68f4d"
    end

    on_intel do
      url "https://github.com/softmaxe/gpw2-battery/releases/download/v1.0.2/gpw2-battery-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "25934c8dc40f9d06815603fef1e2f6c2fbec27dbf4fa06e3af70a6152cc8486c"
    end
  end

  def install
    bin.install "gpw2-battery"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "gpw2-battery #{version}", shell_output("#{bin}/gpw2-battery --version").strip
  end
end
