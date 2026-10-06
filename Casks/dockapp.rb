cask "dockapp" do
  version "1.0.16"
  sha256 "05a419dcfa110edf01478de7679c62757625bf653f8f7d2cbcb14799a6ebb8ff"

  url "https://dl.dockapp.app/DockApp-#{version}.dmg"
  name "DockApp"
  desc "Dock replacement with window previews, a switcher, snapping, and layouts"
  homepage "https://dockapp.app/"

  livecheck do
    url "https://dl.dockapp.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

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
