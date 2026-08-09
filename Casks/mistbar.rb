cask "mistbar" do
  version "1.0"
  sha256 "dc7d67dfe86d215c673c053e7c298479d81a1468a8cec8d05774482aa25eea39"

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
