cask "klipp" do
  version "1.0"
  sha256 "4aed198440fb23850fde710e4f6e328fb4a26272c108abf1ab7e312b51b29a39"

  url "https://github.com/jannejava/Klipp/releases/download/v#{version}/Klipp-#{version}.dmg"
  name "Klipp"
  desc "Minimal screenshot and annotation app for the menu bar"
  homepage "https://github.com/jannejava/Klipp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Klipp.app"

  uninstall quit: "se.eastwest.klipp"

  zap trash: [
    "~/Library/Application Support/Klipp",
    "~/Library/Preferences/se.eastwest.klipp.plist",
  ]
end
