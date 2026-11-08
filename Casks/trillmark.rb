cask "trillmark" do
  version "1.1.0"
  sha256 "76f2d06288b25eac347d1bb2881cda9320587b4607f47bebb14d1dadb23c7c8c"

  url "https://dl.trillmark.app/TrillMark-#{version}.dmg"
  name "TrillMark"
  desc "Per-app notification sounds and a colored, labeled screen flash"
  homepage "https://trillmark.app/"

  livecheck do
    url "https://trillmark.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TrillMark.app"

  zap trash: [
    "~/Library/Application Support/TrillMark",
    "~/Library/Caches/com.skj.trillmark",
    "~/Library/HTTPStorages/com.skj.trillmark",
    "~/Library/Preferences/com.skj.trillmark.plist",
    "~/Library/Saved Application State/com.skj.trillmark.savedState",
  ]
end
