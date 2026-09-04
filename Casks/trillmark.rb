cask "trillmark" do
  version "1.0.7"
  sha256 "f7e6f04cd0729eef91b8c11d54b9642d018688b91afcba82421645c6c53733b8"

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
