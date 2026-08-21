class Bears < Formula
  desc "File-based task tracker CLI and MCP server for AI agent workflows"
  homepage "https://github.com/LHelge/bea-rs"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.9.0/bea-macos-aarch64"
      sha256 "541221165ed5e6bafe0c4aea63237842306362c27c71d0bf5dd086cdc816d774"
    end
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.9.0/bea-macos-x86_64"
      sha256 "4ed078effa47fc2641abf4de093b97730af16d77647e7022ff19b53c3ecf983e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.9.0/bea-linux-x86_64"
      sha256 "e80a49bf649bc9cd1cf8d1ec0b3f55d418887a86a4c45eeffa2191325c41e961"
    end
  end

  def install
    bin.install Dir["bea-*"].first => "bea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bea --version")
  end
end
