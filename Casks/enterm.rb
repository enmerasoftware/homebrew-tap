cask "enterm" do
  version "0.1.5"
  sha256 "ec4141fa9b3d9f4eaf7f8d154bbbc296b6a2e2eb413183aff888b6ebad4c9f96"

  url "https://github.com/enmerasoftware/enterm/releases/download/v#{version}/Enterm-#{version}.dmg"
  name "Enterm"
  desc "Canvas for AI coding agents that keeps the official programs unchanged"
  homepage "https://github.com/enmerasoftware/enterm"

  livecheck do
    url "https://github.com/enmerasoftware/enterm/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  # Sparkle updates the app itself.
  auto_updates true
  depends_on macos: :sonoma

  app "Enterm.app"

  zap trash: [
    "~/Library/Application Support/Enterm",
    "~/Library/Caches/tr.com.enmera.enterm",
    "~/Library/HTTPStorages/tr.com.enmera.enterm",
    "~/Library/Preferences/tr.com.enmera.enterm.plist",
    "~/Library/Saved Application State/tr.com.enmera.enterm.savedState",
  ]
end
