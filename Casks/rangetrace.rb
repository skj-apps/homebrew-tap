cask "rangetrace" do
  version "1.1.0"
  sha256 "88228af20e0f64f175c75d8183d4e0743ee751fe909d8e356c081b960deda472"

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
