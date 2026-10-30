class Ferry < Formula
  desc "Move the focused macOS window to another Space"
  homepage "https://github.com/softmaxe/ferry"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/ferry/releases/download/v0.0.3/ferry-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "8098c1b07deae420f5628ba489f5b8db5cd806dfeed03d201d9923c34ca29f54"
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
