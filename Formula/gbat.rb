class Gbat < Formula
  desc "Read Logitech GPW2 battery status on macOS"
  homepage "https://github.com/softmaxe/gbat"
  license "AGPL-3.0-only"

  depends_on macos: :big_sur

  on_macos do
    on_arm do
      url "https://github.com/softmaxe/gbat/releases/download/v1.0.4/gpwbat-v1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "20e95e807f79fb997804990c89f4cfa16f61ef5824a4b4e629f3c4ce0f9b721e"
    end

    on_intel do
      url "https://github.com/softmaxe/gbat/releases/download/v1.0.4/gpwbat-v1.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "a64d94c06487f7c9d7a1b8c1b392ded790f425baece357fae438cfcdbd24a3b7"
    end
  end

  def install
    # Archive from v1.0.4 contains binary named `gpwbat`; newer releases contain `gbat`.
    # Handle both for smooth transition.
    if File.exist?("gbat")
      bin.install "gbat"
    else
      bin.install "gpwbat" => "gbat"
    end
    # Provide backward-compat symlink so scripts using `gpwbat` keep working
    bin.install_symlink bin/"gbat" => "gpwbat"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "gbat #{version}", shell_output("#{bin}/gbat --version").strip
    assert_equal shell_output("#{bin}/gbat --version").strip, shell_output("#{bin}/gpwbat --version").strip
  end
end
