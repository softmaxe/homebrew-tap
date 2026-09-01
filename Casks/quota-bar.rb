cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "78185105405ae57bba5e16a17b8f859e5c45c7be783c0caedbe68c9278e49f19",
         intel: "457e35872099d34a6b9d936b74b27872a810b86c810ae0b2f4e5df59fa949635"

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
