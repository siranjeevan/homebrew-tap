cask "pinbox" do
  version "1.0.0"
  sha256 "3d3e2aea0494d9c427f878e741d34348fa27cc5706ea7b96ce163244bd6f1431"

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
