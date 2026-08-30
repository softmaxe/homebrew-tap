cask "agent-usage-bar" do
  deprecate! date: "2026-08-30", because: :renamed, replacement: "quota-bar"

  arch arm: "arm64", intel: "x86_64"

  version "1.0.4"
  sha256 arm:   "b1c32c8f65d9087ed598e5b738477e8cf822e2342a76ebd54289ccd148fb1b19",
         intel: "db78df0ec3458a4752387b0bbe57c59db09c602552b2bd1f79245b3a12a459e1"

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
