cask "gesturecraft" do
  version "1.0.12"
  sha256 "fe2a6e59e9359c920a30063e2c8fe5c574a8b132f8ede8035a0b7ddcda3f0d28"

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
