cask "tuneright" do
  version "1.0.3"
  sha256 "45a5a9a5dfac9cd2e48dd88769e1fd18fd0e3fadba9d8d5ef44eb27c673a18d9"

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
