class Bears < Formula
  desc "File-based task tracker CLI and MCP server for AI agent workflows"
  homepage "https://github.com/LHelge/bea-rs"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.8.0/bea-macos-aarch64"
      sha256 "86745b797f5d6f964714e993bac1a269564e6556d9f155d88c5cbe230f09419d"
    end
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.8.0/bea-macos-x86_64"
      sha256 "ddccbe22ff0a0de68731fa943191b070c82e0627484363384a73a03f1858af7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.8.0/bea-linux-x86_64"
      sha256 "ea560e9afbfeb532b6ab2f559f6f26075695870fdccdf48944fc9a5b56723ccc"
    end
  end

  def install
    bin.install Dir["bea-*"].first => "bea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bea --version")
  end
end
