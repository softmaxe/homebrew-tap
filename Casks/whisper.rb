cask "whisper" do
  version "1.0.7"
  sha256 "5660b4df8bdfa73ebe88eae6d45d225b1af5a54e2037e463aa708088a6fc73cf"

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
