cask "klipp" do
  version "1.0.1"
  sha256 "da85d289078db3a05bb67217f18ff2fe2c87cb77f3ffd26917a829e8c7d6d3cf"

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
