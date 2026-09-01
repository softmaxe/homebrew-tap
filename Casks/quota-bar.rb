cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.7"
  sha256 arm:   "52ae5b5537b6aa0e84625f68bff721f67cc982ee3afb0b9b8826d3377e1a5896",
         intel: "b514efdebffef5d8701bdbd12e75dcb7c470e9bbe870aeb044aa0c7f6cfc90bd"

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
