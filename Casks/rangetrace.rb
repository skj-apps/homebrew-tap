cask "rangetrace" do
  version "1.0.7"
  sha256 "eb657b9a4df99a5cfc01a4c9366d7c62ffcf303309f0f2134182f81358832739"

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
