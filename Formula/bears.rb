class Bears < Formula
  desc "File-based task tracker CLI and MCP server for AI agent workflows"
  homepage "https://github.com/LHelge/bea-rs"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.10.0/bea-macos-aarch64"
      sha256 "37ee36458d46047a60e4c37c0d381b069d61824af525204520a4a00483ea9233"
    end
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.10.0/bea-macos-x86_64"
      sha256 "75857064b2080a177b49d94b51549ac3df9734c11ceac4081ffd10d45152909c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.10.0/bea-linux-x86_64"
      sha256 "dcb919ca36fdb9fea598205bfe3c42a070a8c5f5a606ed588408599ef9a517a9"
    end
  end

  def install
    bin.install Dir["bea-*"].first => "bea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bea --version")
  end
end
