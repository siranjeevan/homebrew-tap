cask "pinbox" do
  version "1.0.0"
  sha256 "8f1873e361be334cbd83a83d914b13a24218d47316bc1e87ac683945d9191850"

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
