cask "rangetrace" do
  version "1.0.1"
  sha256 "0018fe034cb1b725ff9dac3324958a67fd6035afc2f1d0a293131688fd0d8263"

  url "https://dl.rangetrace.app/RangeTrace-#{version}.dmg",
      verified: "dl.rangetrace.app/"
  name "RangeTrace"
  desc "Dexcom CGM glucose, trend, and alerts in your menu bar"
  homepage "https://rangetrace.app/"

  livecheck do
    url "https://dl.rangetrace.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "RangeTrace.app"

  zap trash: [
    "~/Library/Caches/com.skj.rangetrace",
    "~/Library/HTTPStorages/com.skj.rangetrace",
    "~/Library/Preferences/com.skj.rangetrace.plist",
    "~/Library/Saved Application State/com.skj.rangetrace.savedState",
  ]
end
