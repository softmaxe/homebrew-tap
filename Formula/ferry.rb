class Ferry < Formula
  desc "Move the focused macOS window to another Space"
  homepage "https://github.com/softmaxe/ferry"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/ferry/releases/download/v1.0.0/ferry-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "c0fd76de4571baae2399da7d9accd6c18a52748d02f431980552690c4e03e8a1"
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
