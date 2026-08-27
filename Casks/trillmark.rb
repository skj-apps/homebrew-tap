cask "trillmark" do
  version "1.0.3"
  sha256 "edb61f677bac958ea3544e92a7b85f103de76f4ba866b532f0e1ababf7c55030"

  url "https://dl.trillmark.app/TrillMark-#{version}.dmg",
      verified: "dl.trillmark.app/"
  name "TrillMark"
  desc "Per-app notification sounds and a colored, labeled screen flash"
  homepage "https://trillmark.app/"

  livecheck do
    url "https://trillmark.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "TrillMark.app"

  zap trash: [
    "~/Library/Application Support/TrillMark",
    "~/Library/Caches/com.skj.trillmark",
    "~/Library/HTTPStorages/com.skj.trillmark",
    "~/Library/Preferences/com.skj.trillmark.plist",
    "~/Library/Saved Application State/com.skj.trillmark.savedState",
  ]
end
