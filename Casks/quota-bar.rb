cask "quota-bar" do
  version "1.4.1"
  sha256 "805ef32cd5e786e84340c44653d73fb234b8066285772f40a444158d3e0b4e8a"

  url "https://github.com/softmaxe/quota-bar/releases/download/v#{version}/QuotaBar-#{version}-macos-arm64.zip",
      verified: "github.com/softmaxe/quota-bar/"
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
