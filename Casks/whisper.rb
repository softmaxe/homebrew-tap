cask "whisper" do
  version "0.0.17"
  sha256 "8341561d1f67cb50778dd8a3e7de4510798e4ab022ea9b29d2079c700b3d54ac"

  url "https://github.com/softmaxe/whisper/releases/download/v#{version}/whisper-#{version}-macos-arm64.zip"
  name "Whisper"
  desc "Self-hosted desktop dictation"
  homepage "https://github.com/softmaxe/whisper"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Whisper.app"

  zap trash: [
    "~/Library/Application Support/com.softmaxe.whisper",
    "~/Library/HTTPStorages/com.softmaxe.whisper",
    "~/Library/Preferences/com.softmaxe.whisper.plist",
    "~/Library/Saved Application State/com.softmaxe.whisper.savedState",
  ]
end
