cask "klipp" do
  version "1.1"
  sha256 "faa608dd3770a967fe86ab0d00a320631644160221e9eab3fee409447ce4f600"

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
