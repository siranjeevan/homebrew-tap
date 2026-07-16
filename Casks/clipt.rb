cask "clipt" do
  version "1.0.4"
  sha256 "383a13433239ecee4b4ca6f42c1cb7eb5bea76e82e385e092ae5e6b4a1f15456"

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
