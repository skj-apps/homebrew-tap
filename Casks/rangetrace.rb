cask "rangetrace" do
  version "1.0.6"
  sha256 "a1201903f4b0e76637d95d91a2c5a0159ee685d04ed7ced13266f475e6689533"

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
