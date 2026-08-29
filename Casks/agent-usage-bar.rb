cask "agent-usage-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256 arm:   "00712391e275024696e14a2318a32da439b54e05d936352162420ce5ad0573ae",
         intel: "2f8ce126e781702be309b6ecd23b2cdbf6bdb27b7cc1ab4f8fe624d32450d099"

  url "https://github.com/softmaxe/agent-usage-bar/releases/download/v#{version}/AgentUsageBar-#{version}-macos-#{arch}.zip",
      verified: "github.com/softmaxe/agent-usage-bar/"
  name "AgentUsageBar"
  desc "Menu bar app for Codex and Claude quota, cost, and reset windows"
  homepage "https://github.com/softmaxe/agent-usage-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AgentUsageBar.app"

  zap trash: [
    "~/Library/Application Support/AgentUsageBar",
    "~/Library/Caches/AgentUsageBar",
    "~/Library/Preferences/com.agentusagebar.app.plist",
  ]
end
