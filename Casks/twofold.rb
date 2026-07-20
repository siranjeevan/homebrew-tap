cask "twofold" do
  version "1.0.0"
  sha256 "223cc2335d27e63e511365a0bca3f7293a68218da97c802111d9c94f20e5bba4"

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
