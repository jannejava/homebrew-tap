cask "klipp" do
  version "1.3.0"
  sha256 "c28d28a75bb7c7f96e656a2e437c4e716699519c604ae5b2b5c824b2d3476715"

  url "https://github.com/jannejava/homebrew-tap/releases/download/v#{version}/Klipp-#{version}.dmg"
  name "Klipp"
  desc "Minimal screenshot and annotation app for the menu bar"
  homepage "https://github.com/jannejava/homebrew-tap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Klipp.app"

  uninstall quit: "se.eastwest.klipp"

  zap trash: [
    "~/Library/Application Support/Klipp",
    "~/Library/Preferences/se.eastwest.klipp.plist",
  ]
end
