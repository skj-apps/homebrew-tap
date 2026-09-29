cask "uninstallguard" do
  version "1.2.5"
  sha256 "0fa7b7201b5d0915220919545be6594149999bfbb6641454f4c04dd5ecc75a3d"

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
