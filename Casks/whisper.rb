cask "whisper" do
  version "1.0.6"
  sha256 "cec5a49af2d2e802a13cb80a8c9aeb3b89a0f4ac7ac47a6a178c489b9f13f8fd"

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
