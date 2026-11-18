class Ferry < Formula
  desc "Move the focused macOS window to another Space"
  homepage "https://github.com/softmaxe/ferry"
  url "https://github.com/softmaxe/ferry/releases/download/v0.0.4/ferry-v0.0.4-aarch64-apple-darwin.tar.gz"
  sha256 "efac58ff109a315d9bb97f02751f374ffea17fdcf88e7768bd9d015a62206cae"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "ferry"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "ferry #{version}", shell_output("#{bin}/ferry --version").strip
  end
end
