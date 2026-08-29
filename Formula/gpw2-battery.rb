class Gpw2Battery < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gpw2-battery"
  license "AGPL-3.0-only"

  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gpw2-battery/releases/download/v1.0.3/gpw2-battery-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "ae734823afb7d0addf3bda8fd441d8b679d0579af302cfcd18b6735156448edb"
    end

    on_intel do
      url "https://github.com/softmaxe/gpw2-battery/releases/download/v1.0.3/gpw2-battery-v1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "4087cf09ca8a5fa08095b4092eb911272d5d6dc0502f3b1a50ae436634e2e019"
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
