cask "findercraft" do
  version "1.0.13"
  sha256 "eacb801c4b5358edcfb2a023a7975dcac9e7eccecec8cb4d381897864ebe397c"

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
