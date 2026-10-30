cask "whisper" do
  version "0.0.13"
  sha256 "09770f5dbcf5f735536589833d9111eb070a9a582ee1f275564b1a948194302f"

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
