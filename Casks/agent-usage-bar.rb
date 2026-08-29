cask "agent-usage-bar" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "b89da671b6390603f163de27625d2e092a84f575d449e074989c3ee51d66b833",
         intel: "412ad8dd877634b637ba51cc5255bad18db21c9c91bc8fdd900e2bf4774d5900"

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
