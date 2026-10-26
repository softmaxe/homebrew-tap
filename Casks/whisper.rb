cask "whisper" do
  version "0.0.5"
  sha256 "4c46e8007777b9b7f4f3aef4f7337a663ee8368451953deadac31d070bed2131"

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
