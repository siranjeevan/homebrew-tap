cask "timezone-switcher" do
  version "1.0.0"
  sha256 "9d1e4aeef82cee9ba29ae5c5a7ea48d01216da4100daa5c880aaecced62f3bd8"

  url "https://github.com/siranjeevan/TimeZoneSwitcher/releases/download/v#{version}/TimeZoneSwitcher.dmg"
  name "TimeZone Switcher"
  desc "Native macOS menu bar app to browse, search, and switch system timezones"
  homepage "https://github.com/siranjeevan/TimeZoneSwitcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TimeZone Switcher.app"

  zap trash: [
    "~/Library/Application Scripts/com.timezone.TimeZoneSwitcher",
    "~/Library/Containers/com.timezone.TimeZoneSwitcher",
    "~/Library/Preferences/com.timezone.TimeZoneSwitcher.plist",
    "~/Library/Saved Application State/com.timezone.TimeZoneSwitcher.savedState",
  ]
end
