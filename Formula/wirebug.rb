class Wirebug < Formula
  desc "Text-defined electrical schematics and wiring harnesses"
  homepage "https://github.com/LHelge/wirebug"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/LHelge/wirebug/releases/download/v0.2.1/wirebug-macos-aarch64"
      sha256 "d2b9ad3c0d1e8f46e34e5532ec38b34f0263d06e98e5be9733ba2189217311ac"
    end
    on_intel do
      url "https://github.com/LHelge/wirebug/releases/download/v0.2.1/wirebug-macos-x86_64"
      sha256 "c47a2eabab22b893b79016074ac46497f0fc74dfd9b3642b482dfb92c0a91988"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/wirebug/releases/download/v0.2.1/wirebug-linux-x86_64"
      sha256 "82f17c9ea6c3c9732090d437aa76a06c894b0aae2922616bc683e7040fa8dfd9"
    end
  end

  def install
    bin.install Dir["wirebug-*"].first => "wirebug"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wirebug --version")
  end
end
