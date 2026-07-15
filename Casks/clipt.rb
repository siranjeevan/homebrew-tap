cask "clipt" do
  version "1.0.3"
  sha256 "1765ee1ad438ef665dc8d8d64b2574ab0d44cf1e8cd30984af2c59d45d49a6ed"

  url "https://github.com/siranjeevan/Clipt/releases/download/v#{version}/Clipt.zip"
  name "Clipt"
  desc "A modern, native clipboard manager with quick-access snippets"
  homepage "https://github.com/siranjeevan/Clipt"

  app "Clipt.app"

  zap trash: [
    "~/Library/Application Support/Clipt",
    "~/Library/Preferences/Jeevith.Clipt.plist",
    "~/Library/Saved Application State/Jeevith.Clipt.savedState",
  ]
end
