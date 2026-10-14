cask "klipp" do
  version "1.1.1"
  sha256 "345d8f135985b0bc0c16427546601a7bb99cab61d10fba52989a645d5a5ebce9"

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
