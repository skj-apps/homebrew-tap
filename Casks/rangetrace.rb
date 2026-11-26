cask "rangetrace" do
  version "1.1.1"
  sha256 "6d23d147682db2874ae96ba5c7637a4d165589e0bf642df67f56664c88157e1f"

  url "https://rangetrace.app/releases/RangeTrace-#{version}.dmg"
  name "RangeTrace"
  desc "Dexcom Share glucose reading, trend and alerts in the menu bar"
  homepage "https://rangetrace.app/"

  livecheck do
    url "https://rangetrace.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RangeTrace.app"

  zap trash: [
    "~/Library/Caches/com.skj.rangetrace",
    "~/Library/HTTPStorages/com.skj.rangetrace",
    "~/Library/Preferences/com.skj.rangetrace.plist",
  ]
end
