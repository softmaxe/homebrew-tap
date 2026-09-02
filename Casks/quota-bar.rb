cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "900ce5acd2c1fda3250742871aaec6617d9664e07e3c8382aeb182ffeefe03a0",
         intel: "9de576fb7cf601c7b6c630ce0cb65c8c971d0b9a2ec329ec6ee8a98a8b6402fd"

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
