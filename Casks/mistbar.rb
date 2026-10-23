cask "mistbar" do
  version "1.0.19"
  sha256 "a6f06940563dff392615ce6693b39683aed44f6e7a0796848f81c37b840ee440"

  url "https://dl.mistbar.app/MistBar-#{version}.dmg"
  name "MistBar"
  desc "Menu-bar declutter tool with clipboard, mail, notes, and AI-usage tracking"
  homepage "https://mistbar.app/"

  livecheck do
    url "https://mistbar.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MistBar.app"

  zap trash: [
    "~/Library/Application Support/MistBar",
    "~/Library/Caches/com.skj.MistBar",
    "~/Library/HTTPStorages/com.skj.MistBar",
    "~/Library/Preferences/com.skj.MistBar.plist",
    "~/Library/Saved Application State/com.skj.MistBar.savedState",
  ]
end

