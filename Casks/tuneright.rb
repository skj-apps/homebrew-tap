cask "tuneright" do
  version "1.0.4"
  sha256 "39b4d2968d4576336bc3dabbe4130a98a0a8a79b95c336b84e695e74a7198658"

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
