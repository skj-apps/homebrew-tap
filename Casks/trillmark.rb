cask "trillmark" do
  version "1.0.13"
  sha256 "3286dcc9b635e6aa2d2e2ed54c0cf7d6f7c995702127610abeedcada7d69fd48"

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
