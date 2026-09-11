class Ferry < Formula
  desc "Move the focused macOS window to another Space"
  homepage "https://github.com/softmaxe/ferry"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/ferry/releases/download/v0.1.0/ferry-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "72a779bfaa31fff0b17acebc7d4cdb42adba20e0ff554754625a828127f505dd"
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
