cask "timezone-switcher" do
  version "1.0.1"
  sha256 "82adfb04202a2d987d9fa2ccb61a82ca59eb01b17d8f634cc357c677366089c1"

  url "https://github.com/siranjeevan/TimeZoneSwitcher/releases/download/v#{version}/TimeZoneSwitcher.dmg"
  name "TimeZone Switcher"
  desc "Native macOS menu bar app to browse, search, and switch system timezones"
  homepage "https://github.com/siranjeevan/TimeZoneSwitcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TimeZoneSwitcher.app"

  zap trash: [
    "~/Library/Application Scripts/com.timezone.TimeZoneSwitcher",
    "~/Library/Containers/com.timezone.TimeZoneSwitcher",
    "~/Library/Preferences/com.timezone.TimeZoneSwitcher.plist",
    "~/Library/Saved Application State/com.timezone.TimeZoneSwitcher.savedState",
  ]
end
