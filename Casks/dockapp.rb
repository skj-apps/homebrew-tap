cask "dockapp" do
  version "1.0.6"
  sha256 "fc810c65485f077266ee3ee60ade17a2cf54203ceeeb529df973059100c0882f"

  url "https://dl.dockapp.app/DockApp-#{version}.dmg",
      verified: "dl.dockapp.app/"
  name "DockApp"
  desc "Dock replacement with window previews, a switcher, snapping, and layouts"
  homepage "https://dockapp.app/"

  livecheck do
    url "https://dl.dockapp.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "DockApp.app"

  zap trash: [
    "~/Library/Application Support/DockApp",
    "~/Library/Caches/com.skj.dockapp",
    "~/Library/HTTPStorages/com.skj.dockapp",
    "~/Library/HTTPStorages/com.skj.dockapp.binarycookies",
    "~/Library/Preferences/com.skj.dockapp.plist",
    "~/Library/Saved Application State/com.skj.dockapp.savedState",
  ]
end
