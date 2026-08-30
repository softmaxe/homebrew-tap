cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.5"
  sha256 arm:   "eb5f71a0312b0ed07766e75b519854b39e357c6a52a2e43d964efc3ce75d09fe",
         intel: "dfda09d92aed371cb37ab722096006dd9bd6ea8d22f99cc6960290a462feaa17"

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
