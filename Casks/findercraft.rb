cask "findercraft" do
  version "1.0.10"
  sha256 "554e8a3631571ce60750da803e7372ab7e4ac14395661c3a9ad93fbaac5b04dd"

  url "https://findercraft.app/FinderCraft-#{version}.dmg",
      verified: "findercraft.app/"
  name "FinderCraft"
  desc "Move, organize, rename, compare, and recover files without leaving Finder"
  homepage "https://findercraft.app/"

  livecheck do
    url "https://findercraft.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "FinderCraft.app"

  zap trash: [
    "~/Library/Caches/com.skj.findercraft",
    "~/Library/Group Containers/856K46LYFS.group.com.skj.findercraft",
    "~/Library/HTTPStorages/com.skj.findercraft",
    "~/Library/HTTPStorages/com.skj.findercraft.binarycookies",
    "~/Library/Preferences/com.skj.findercraft.plist",
    "~/Library/Saved Application State/com.skj.findercraft.savedState",
  ]
end
