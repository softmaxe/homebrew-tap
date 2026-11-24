class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v0.0.4/gbat-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "e37f24e53a8a5c4ea5f4b18fd4da3e4e216d35df885000ac3198e7b837eecb18"
    end
  end

  def install
    bin.install "gbat"
    prefix.install "LICENSE"
    prefix.install "THIRD_PARTY_NOTICES.md" if (buildpath/"THIRD_PARTY_NOTICES.md").file?
  end

  test do
    assert_equal "gbat #{version}", shell_output("#{bin}/gbat --version").strip
  end
end
