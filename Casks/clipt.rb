cask "clipt" do
  version "1.0.5"
  sha256 "fc04de4d5e463a68f196dcfdb5663d1539676f51590c1a96a766ec615da7c195"

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
