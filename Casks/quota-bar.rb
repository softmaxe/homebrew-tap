cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.8"
  sha256 arm:   "8716bb8863b5b36277fe32429c0989008e42baa1fcf43d253148c951789b0137",
         intel: "bbe733a261fdc3917fe72ef5b51c85cb4769913f50264bce3b9cf8c9468acfcb"

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
