cask "klipp" do
  version "1.2.0"
  sha256 "5a2a56310fd4c3fd18bc2dbaf2b9eb4ff9bbd25d18444b427dbaae45a7fc0093"

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
