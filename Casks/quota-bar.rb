cask "quota-bar" do
  version "0.0.38"
  sha256 "68ed4d2ab6ba3a8fbab9279f58627b331e6d59d3d333e7200c00a1754b583f3b"

  url "https://github.com/softmaxe/homebrew-tap/releases/download/quota-bar-v#{version}/QuotaBar-#{version}-macos-arm64.zip"
  name "QuotaBar"
  desc "Menu bar app for Codex and Claude quota, cost, and reset windows"
  homepage "https://github.com/softmaxe/homebrew-tap"

  livecheck do
    url "https://github.com/softmaxe/homebrew-tap.git"
    regex(/^quota-bar-v(\d+\.\d+\.\d+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Application Support/QuotaBar",
    "~/Library/Caches/QuotaBar",
    "~/Library/Preferences/com.quotabar.app.plist",
  ]
end
