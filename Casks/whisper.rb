cask "whisper" do
  version "0.0.18"
  sha256 "494f2d4bd8a8d41e0726a6811c86c0bd40e8714c7edd1a6ee00c222cbed52cf8"

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
