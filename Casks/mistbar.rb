cask "mistbar" do
  version "1.0"
  sha256 "29fe46d0adb381484fab7eb9f82d273eb44b34e0f277e31f2ff9bcf0a21e7893"

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
