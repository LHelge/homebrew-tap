cask "granit" do
  version "0.7.0"
  sha256 "c2c5ff69bea0e069fd0072313b025cd6a19cf0f4d4a67a7121cc18b16120e846"

  url "https://github.com/LHelge/granit/releases/download/v#{version}/Granit_#{version}_aarch64.dmg",
      verified: "github.com/LHelge/granit/"
  name "Granit"
  desc "Minimal desktop note-taking app"
  homepage "https://granit.lhelge.se/"

  depends_on arch: :arm64

  auto_updates true

  app "Granit.app"

  zap trash: [
    "~/Library/Application Support/se.lhelge.granit",
    "~/Library/Caches/se.lhelge.granit",
    "~/Library/Saved Application State/se.lhelge.granit.savedState",
    "~/Library/WebKit/se.lhelge.granit",
  ]
end
