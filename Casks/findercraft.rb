cask "findercraft" do
  version "1.0.3"
  sha256 "e43c16bd839d96e1e500808eaa5af031c4635f30ebbb4bb8a2d20056a0a9d79d"

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
