cask "uninstallguard" do
  version "1.2.3"
  sha256 "81ee40aa96f7d906f5059a2d986d6538f8d61e3eff01bf6088232addb943add6"

  url "https://uninstallguard.app/UninstallGuard-#{version}.dmg",
      verified: "uninstallguard.app/"
  name "UninstallGuard"
  desc "Careful Mac uninstaller that finds an app's leftovers and moves them to the Trash"
  homepage "https://uninstallguard.app/"

  livecheck do
    url "https://uninstallguard.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "UninstallGuard.app"

  zap trash: [
    "~/Library/Application Support/UninstallGuard",
    "~/Library/Caches/com.skj.uninstallguard",
    "~/Library/HTTPStorages/com.skj.uninstallguard",
    "~/Library/Preferences/com.skj.uninstallguard.plist",
    "~/Library/Saved Application State/com.skj.uninstallguard.savedState",
  ]
end
