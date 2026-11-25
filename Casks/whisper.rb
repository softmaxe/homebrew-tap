cask "whisper" do
  version "0.0.35"
  sha256 "d9465a896ddfebbf8e698c7bde94181f9e118695682fa8ab94c6f2aba8dd50f8"

  url "https://github.com/softmaxe/homebrew-tap/releases/download/whisper-v#{version}/whisper-#{version}-macos-arm64.zip"
  name "Whisper"
  desc "Self-hosted desktop dictation"
  homepage "https://github.com/softmaxe/homebrew-tap/releases?q=whisper"

  livecheck do
    url "https://github.com/softmaxe/homebrew-tap.git"
    regex(/^whisper-v(\d+\.\d+\.\d+)$/i)
  end

  depends_on arch: :arm64
  depends_on formula: "ffmpeg"
  depends_on macos: :monterey

  app "Whisper.app"

  zap trash: [
    "~/Library/Application Support/com.softmaxe.whisper",
    "~/Library/HTTPStorages/com.softmaxe.whisper",
    "~/Library/Preferences/com.softmaxe.whisper.plist",
    "~/Library/Saved Application State/com.softmaxe.whisper.savedState",
  ]
end
