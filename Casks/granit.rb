cask "granit" do
  version "0.6.0"
  sha256 "88b565db87068f49ac92aa115ad62e91b54db939462b6b8fdf6f89342158cf55"

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
