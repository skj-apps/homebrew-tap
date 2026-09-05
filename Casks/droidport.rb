cask "droidport" do
  version "1.3"
  sha256 "PLACEHOLDER_DMG_SHA256"

  url "https://droidport.app/DroidPort-#{version}.dmg",
      verified: "droidport.app/"
  name "DroidPort"
  desc "Link your Android phone to your Mac: texts, notifications, calls, files, clipboard"
  homepage "https://droidport.app/"

  livecheck do
    url "https://droidport.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "DroidPort.app"

  # DroidPort is a paid app: this cask delivers the notarized Developer-ID build, which enforces its
  # Paddle license (buy once at droidport.app/buy). It is NOT a free tier.
  zap trash: [
    "~/Library/Application Support/DroidPort",
    "~/Library/Caches/com.skj.droidport",
    "~/Library/HTTPStorages/com.skj.droidport",
    "~/Library/HTTPStorages/com.skj.droidport.binarycookies",
    "~/Library/Preferences/com.skj.droidport.plist",
    "~/Library/Saved Application State/com.skj.droidport.savedState",
  ]
end
