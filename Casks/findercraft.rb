cask "findercraft" do
  version "1.0.12"
  sha256 "afb806150d19946aee86edede607404ba149b6881e9e9ec1842c539587ac57e7"

  url "https://findercraft.app/FinderCraft-#{version}.dmg"
  name "FinderCraft"
  desc "Move, organize, rename, compare, and recover files without leaving Finder"
  homepage "https://findercraft.app/"

  livecheck do
    url "https://findercraft.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

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
