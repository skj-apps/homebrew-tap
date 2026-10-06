cask "gesturecraft" do
  version "1.0.19"
  sha256 "8bd222b84d893cf7026f3686e6c7350c19bb6ad47b67cb58dcebcdf7edaf9631"

  url "https://dl.gesturecraft.app/GestureCraft-#{version}.dmg"
  name "GestureCraft"
  desc "Custom trackpad, mouse, and keyboard gestures mapped to actions"
  homepage "https://gesturecraft.app/"

  livecheck do
    url "https://dl.gesturecraft.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "GestureCraft.app"

  zap trash: [
    "~/Library/Caches/com.skj.gesturecraft",
    "~/Library/HTTPStorages/com.skj.gesturecraft",
    "~/Library/HTTPStorages/com.skj.gesturecraft.binarycookies",
    "~/Library/Preferences/com.skj.gesturecraft.plist",
    "~/Library/Saved Application State/com.skj.gesturecraft.savedState",
  ]
end
