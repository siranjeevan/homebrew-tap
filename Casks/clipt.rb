cask "clipt" do
  version "1.0.1"
  sha256 "89d61d7a6446323e91cc3aeed959cef3306f6da213296c4c5f4fc15555d51c22"

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
