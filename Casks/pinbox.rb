cask "pinbox" do
  version "1.0.3"
  sha256 "fe5bd07517d494bab0b54c611766d76a4002b3ac7ebcfa45669f21b181eb699c"

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
