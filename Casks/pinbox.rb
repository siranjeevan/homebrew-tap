cask "pinbox" do
  version "1.0.2"
  sha256 "aaf7743b04a5793847c252d89ed79e2ee1032a9da70fe75eaa0d96183f2b4238"

  url "https://github.com/siranjeevan/Pinbox/releases/download/v#{version}/Pinbox.dmg"
  name "Pinbox"
  desc "Native macOS menu bar clipboard manager and snippet tool"
  homepage "https://github.com/siranjeevan/Pinbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pinbox.app"

  zap trash: [
    "~/Library/Application Scripts/Jeevith.Pinbox",
    "~/Library/Containers/Jeevith.Pinbox",
    "~/Library/Preferences/Jeevith.Pinbox.plist",
    "~/Library/Saved Application State/Jeevith.Pinbox.savedState",
  ]
end
