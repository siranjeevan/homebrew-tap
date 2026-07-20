cask "twofold" do
  version "1.0.0"
  sha256 "b759071ee5d49b8ed91cbb15766a08a98c21c05a810f3421e127fb724948e4af"

  url "https://github.com/siranjeevan/Twofold/releases/download/v#{version}/Twofold.zip"
  name "Twofold"
  desc "Menu Bar 2FA Authenticator for macOS"
  homepage "https://github.com/siranjeevan/Twofold"

  app "Twofold.app"

  zap trash: [
    "~/Library/Application Support/Twofold",
    "~/Library/Preferences/Jeevith.Twofold.plist",
  ]
end
