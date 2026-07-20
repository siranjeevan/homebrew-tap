cask "twofold" do
  version "1.0.0"
  sha256 "73e5685251bec8153b6dba03f4e4f8b9f5ed3140ae3000d1224f28e3a9e4b112"

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
