cask "gesturecraft" do
  version "1.0.6"
  sha256 "af7b947ef90f1da356fcc0c842837926f08ebcff0bb40498511ee4b85b75b261"

  url "https://dl.gesturecraft.app/GestureCraft-#{version}.dmg",
      verified: "dl.gesturecraft.app/"
  name "GestureCraft"
  desc "Custom trackpad, mouse, and keyboard gestures mapped to actions"
  homepage "https://gesturecraft.app/"

  livecheck do
    url "https://dl.gesturecraft.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "GestureCraft.app"

  zap trash: [
    "~/Library/Caches/com.skj.gesturecraft",
    "~/Library/HTTPStorages/com.skj.gesturecraft",
    "~/Library/HTTPStorages/com.skj.gesturecraft.binarycookies",
    "~/Library/Preferences/com.skj.gesturecraft.plist",
    "~/Library/Saved Application State/com.skj.gesturecraft.savedState",
  ]
end
