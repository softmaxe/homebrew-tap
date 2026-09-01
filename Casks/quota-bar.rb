cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.9"
  sha256 arm:   "65229002f88559df041bb1a7e925ba0726ac0538a546b0d81d4f34240e69156d",
         intel: "2a126c6b14ba0ffbdb62b57af1711ea764fd4a3806a606a0031cc5effa5416b3"

  url "https://github.com/softmaxe/quota-bar/releases/download/v#{version}/QuotaBar-#{version}-macos-#{arch}.zip",
      verified: "github.com/softmaxe/quota-bar/"
  name "QuotaBar"
  desc "Menu bar app for Codex and Claude quota, cost, and reset windows"
  homepage "https://github.com/softmaxe/quota-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Application Support/QuotaBar",
    "~/Library/Caches/QuotaBar",
    "~/Library/Preferences/com.quotabar.app.plist",
  ]
end
