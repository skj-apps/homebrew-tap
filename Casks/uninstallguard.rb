cask "uninstallguard" do
  version "1.2.1"
  sha256 "ec7b75026146da16794d46f475ce0a04c0d22ed4b72fbe1322e06eecd672ab97"

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
