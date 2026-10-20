cask "gesturecraft" do
  version "1.0.20"
  sha256 "ea740a4d0fe8ff502538a4af4de11930eb4824e8dcedb8187a9128aa0c006ca0"

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
