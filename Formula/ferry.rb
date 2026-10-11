class Ferry < Formula
  desc "Move the focused macOS window to another Space"
  homepage "https://github.com/softmaxe/ferry"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/ferry/releases/download/v0.0.1/ferry-v0.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "e558a6ab43b50feedac781c17fea56f24a3a6021ee91a51dd541579dd608b0ba"
    end
  end

  def install
    bin.install "ferry"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "ferry #{version}", shell_output("#{bin}/ferry --version").strip
  end
end
