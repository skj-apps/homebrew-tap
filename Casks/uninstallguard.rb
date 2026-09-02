cask "uninstallguard" do
  version "1.0.1"
  sha256 "b6d049f61c98700e5408a5ba1fa72de3061828f3bd2ae998d614a844da91d582"

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
