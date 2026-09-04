cask "mistbar" do
  version "1.0.4"
  sha256 "b5c35af1d60f2a7810243c5ccf28eb9f53f60f051babc6c6b2ced96175766de1"

  url "https://dl.mistbar.app/MistBar-#{version}.dmg",
      verified: "dl.mistbar.app/"
  name "MistBar"
  desc "Menu-bar declutter tool with clipboard, mail, notes, and AI-usage tracking"
  homepage "https://mistbar.app/"

  livecheck do
    url "https://mistbar.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "MistBar.app"

  zap trash: [
    "~/Library/Application Support/MistBar",
    "~/Library/Caches/com.skj.MistBar",
    "~/Library/HTTPStorages/com.skj.MistBar",
    "~/Library/Preferences/com.skj.MistBar.plist",
    "~/Library/Saved Application State/com.skj.MistBar.savedState",
  ]
end

