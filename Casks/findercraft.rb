cask "findercraft" do
  version "1.1.1"
  sha256 "2559f0772abe2e0108b137e6271bc4b9aa590b5af645d360ccab9d8e5cd6f89c"

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
