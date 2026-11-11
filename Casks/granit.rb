cask "granit" do
  version "0.10.1"
  sha256 "cca56c68651a92ed2ac9b8acee322f8073592daeeaa841887ac99267e5a3e1a8"

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
