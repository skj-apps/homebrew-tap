cask "dockapp" do
  version "1.0.8"
  sha256 "add7d99c10091fe413eb5bb74efd29d84f96c2357f1241c9e5c05a0dcb8f4c8f"

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
