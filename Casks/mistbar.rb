cask "mistbar" do
  version "1.0.15"
  sha256 "4809d9c1c38e1054aa8214157f5c9b7f0356d0e8681d1314fcbe31b76cff8201"

  url "https://dl.mistbar.app/MistBar-#{version}.dmg"
  name "MistBar"
  desc "Menu-bar declutter tool with clipboard, mail, notes, and AI-usage tracking"
  homepage "https://mistbar.app/"

  livecheck do
    url "https://mistbar.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "MistBar.app"

  zap trash: [
    "~/Library/Application Support/MistBar",
    "~/Library/Caches/com.skj.MistBar",
    "~/Library/HTTPStorages/com.skj.MistBar",
    "~/Library/Preferences/com.skj.MistBar.plist",
    "~/Library/Saved Application State/com.skj.MistBar.savedState",
  ]
end
