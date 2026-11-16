cask "uninstallguard" do
  version "1.1.0"
  sha256 "d6c6f301ac7c0a7dae113336eeca3058f902a1beb3dce93faf02f8dfa30a6f5d"

  url "https://uninstallguard.app/UninstallGuard-#{version}.dmg"
  name "UninstallGuard"
  desc "Careful Mac uninstaller that finds an app's leftovers and moves them to the Trash"
  homepage "https://uninstallguard.app/"

  livecheck do
    url "https://uninstallguard.app/appcast.xml"
    strategy :sparkle, &:short_version
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
