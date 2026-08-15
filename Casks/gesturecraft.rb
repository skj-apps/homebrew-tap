cask "gesturecraft" do
  version "1.0.2"
  sha256 "9b6e235334094bee46520bfb5fb9cc859dcf11f7464e3026c74c6d049c7cecfb"

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
