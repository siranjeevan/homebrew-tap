cask "clipt" do
  version "1.0.2"
  sha256 "4b3668bcf915fe2dca1100474052537f8b385ad77867faeddf3b07dd82aab525"

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
