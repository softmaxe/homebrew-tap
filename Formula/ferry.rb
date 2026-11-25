class Ferry < Formula
  desc "Move the focused macOS window to another Space"
  homepage "https://github.com/softmaxe/homebrew-tap"
  url "https://github.com/softmaxe/homebrew-tap/releases/download/ferry-v0.0.5/ferry-v0.0.5-macos-arm64.tar.gz"
  version "0.0.5"
  sha256 "e9bd2299a530934df15d2148fe46d36c99463066a3e3617d625aa07e98e9dc3e"

  livecheck do
    url :stable
    regex(/^ferry-v(\d+\.\d+\.\d+)$/i)
    strategy :git
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    bin.install "ferry"
    pkgshare.install "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_equal "ferry #{version}", shell_output("#{bin}/ferry --version").strip
  end
end
