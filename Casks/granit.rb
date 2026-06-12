cask "granit" do
  version "0.6.1"
  sha256 "dc7a4c738b5ba6ed331a3b0eeb4dfbca7b92710cb8966c47b77baca5f6d3578b"

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
