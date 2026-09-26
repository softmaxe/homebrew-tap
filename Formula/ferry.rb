class Ferry < Formula
  desc "Move the focused macOS window to another Space"
  homepage "https://github.com/softmaxe/ferry"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/ferry/releases/download/v1.0.1/ferry-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "639a7bc167fd7a823538231d1e88cd426b418ba3424a811086b0d05c0826fc6c"
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
