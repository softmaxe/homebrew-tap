cask "whisper" do
  version "1.0.13"
  sha256 "dc65ec038d355111b281aef5509e9d2dd5c1b44821fa1c56d2abdbeb9b907326"

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
    "~/Library/Application Support/whisper",
    "~/Library/Caches/whisper",
    "~/Library/Preferences/local.whisper.desktop.plist",
  ]
end
