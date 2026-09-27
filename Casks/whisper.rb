cask "whisper" do
  version "1.1.3"
  sha256 "59d2938dfc5a327244eb89d3a5b7c95cc264aae6c6e29097685a9d9619955acc"

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
