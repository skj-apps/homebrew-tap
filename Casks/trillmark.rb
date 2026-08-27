cask "trillmark" do
  version "1.0.4"
  sha256 "3b86022a90637e3bb47750cf8519da30da9518a1ec601ce7bde9a86d52ec5e4e"

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
