cask "tuneright" do
  version "1.0.1"
  sha256 "9e098845183b7b44e820635ed114f6968ed32e919a275b9e64bf8f703eedc9a2"

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
