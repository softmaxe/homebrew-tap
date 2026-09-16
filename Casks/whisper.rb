cask "whisper" do
  version "1.0.0"
  sha256 "83c2c339208d7b2f2766adf21fb56a3c61d07cb1d09ab537363d52cfeba9d8e2"

  url "https://github.com/softmaxe/whisper/releases/download/v#{version}/whisper-#{version}-macos-arm64.zip"
  name "whisper"
  desc "Self-hosted desktop dictation"
  homepage "https://github.com/softmaxe/whisper"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "whisper.app"

  zap trash: [
    "~/Library/Application Support/whisper",
    "~/Library/Caches/whisper",
    "~/Library/Preferences/local.whisper.desktop.plist",
  ]
end
