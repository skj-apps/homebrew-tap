cask "findercraft" do
  version "1.0.2"
  sha256 "619be00ad260620245de3528884ec84e672b6bc3672fa761db6854347fb9c0a7"

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
    "~/Library/HTTPStorages/com.skj.findercraft",
    "~/Library/HTTPStorages/com.skj.findercraft.binarycookies",
    "~/Library/Preferences/com.skj.findercraft.plist",
    "~/Library/Saved Application State/com.skj.findercraft.savedState",
  ]
end
