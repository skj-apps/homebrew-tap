cask "tuneright" do
  version "1.0.2"
  sha256 "5432725a07afc51d80b0c83a686191ddd4918ae2184860719bd9d48d06a369bb"

  url "https://dl.tuneright.app/TuneRight-#{version}.dmg"
  name "TuneRight"
  desc "Identifies mislabeled or untagged music and fixes tags and album covers"
  homepage "https://tuneright.app/"

  livecheck do
    url "https://dl.tuneright.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TuneRight.app"

  zap trash: [
    "~/Library/Application Support/TuneRight",
    "~/Library/Caches/TuneRight",
    "~/Library/Caches/com.skj.tuneright",
    "~/Library/HTTPStorages/com.skj.tuneright",
    "~/Library/Preferences/com.skj.tuneright.plist",
    "~/Library/Saved Application State/com.skj.tuneright.savedState",
  ]
end
