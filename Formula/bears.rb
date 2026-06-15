class Bears < Formula
  desc "File-based task tracker CLI and MCP server for AI agent workflows"
  homepage "https://github.com/LHelge/bea-rs"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.7.2/bea-macos-aarch64"
      sha256 "f17cb1bb95f521a16a8aff082eaa4a7634dd3b94c46c8b2e67d75860ea917e16"
    end
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.7.2/bea-macos-x86_64"
      sha256 "a11257042e3ad99af75559521e4e74a814f9a16759ad2e36658c52e2192a0ed6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.7.2/bea-linux-x86_64"
      sha256 "efa6f520acfd9dbeb2b5caa4b94244c00e3c64622d3ca35066fa9ced67691190"
    end
  end

  def install
    bin.install Dir["bea-*"].first => "bea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bea --version")
  end
end
