cask "quota-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.6"
  sha256 arm:   "df961e44992a1ea16cf349228aa9782648b672be54bba396718861098d9dd645",
         intel: "3bac1eca268488fa181660e3fd7a934d884ff2e3c3c5b9e54bcf367699b8e967"

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
