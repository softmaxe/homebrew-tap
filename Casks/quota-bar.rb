cask "quota-bar" do
  version "1.0.6"
  sha256 "9c217779046976e738efe6b3c8a51907cfe90c3a20bca600d9521bb336fa7c65"

  url "https://github.com/softmaxe/quota-bar/releases/download/v#{version}/QuotaBar-#{version}-macos-arm64.zip"
  name "QuotaBar"
  desc "Menu bar app for Codex and Claude quota, cost, and reset windows"
  homepage "https://github.com/softmaxe/quota-bar"

  livecheck do
    url :url
    strategy :github_latest
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
