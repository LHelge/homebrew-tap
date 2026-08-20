class Bears < Formula
  desc "File-based task tracker CLI and MCP server for AI agent workflows"
  homepage "https://github.com/LHelge/bea-rs"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.8.1/bea-macos-aarch64"
      sha256 "50dba50044a06afa857115463b2af95e873826ca1490cd036aca97ec80e8594e"
    end
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.8.1/bea-macos-x86_64"
      sha256 "ce8be1f0c14db162d03c419410f13457cd8b67d5eb0c00ba4dd84b3646cc8272"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.8.1/bea-linux-x86_64"
      sha256 "32501cce7d86df5ba61f45531074804adcaf8313f52571d26cced9a9b8406f63"
    end
  end

  def install
    bin.install Dir["bea-*"].first => "bea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bea --version")
  end
end
