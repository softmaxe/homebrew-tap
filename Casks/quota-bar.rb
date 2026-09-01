cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.10"
  sha256 arm:   "7fb20fccb5d7348fe160f1fabb8d78751d3e518c4c2f1c1c576bfd7629d63494",
         intel: "96f0de20bbd941b0128b11ad00358926c6b24102734e59598f5cd1b72c4134c2"

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
