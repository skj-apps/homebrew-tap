cask "trillmark" do
  version "1.0.16"
  sha256 "164a5c6e06ce73a0ea919b12c89956d3d96253f904cfe46d6b57e0c6ebf7fb97"

  url "https://dl.trillmark.app/TrillMark-#{version}.dmg"
  name "TrillMark"
  desc "Per-app notification sounds and a colored, labeled screen flash"
  homepage "https://trillmark.app/"

  livecheck do
    url "https://trillmark.app/appcast.xml"
    strategy :sparkle
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
