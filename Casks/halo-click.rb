# Homebrew cask template for Halo Click.
# Placeholders are filled by scripts/lib/release-artifacts.mjs during publish.
#
# Users install from the public tap (create it once after this lands):
#   brew install --cask timechainstrategy/tap/halo-click
#   brew upgrade --cask halo-click
#
# The `url` is the counted site redirect, not the raw Blob object. Homebrew
# follows the 302 and checks sha256 of the downloaded DMG. If haloclick.app
# is unreachable, temporarily use:
#   https://halo-click.vercel.app/download/1.4.0
# (Deployment Protection on *.vercel.app may block anonymous Homebrew fetches
# — prefer https://haloclick.app.)

cask "halo-click" do
  version "1.4.0"
  sha256 "2c4710820565930b5d5142c64967c1929508cac20ff2051673e8acd6c6b640db"

  url "https://haloclick.app/download/1.4.0"
  name "Halo Click"
  desc "Native macOS radial browser picker"
  homepage "https://haloclick.app"

  livecheck do
    url "https://haloclick.app/releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :ventura

  app "Halo Click.app"

  zap trash: [
    "~/Library/Application Support/Halo Click",
    "~/Library/Preferences/com.haloclick.app.plist",
  ]
end
