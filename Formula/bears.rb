class Bears < Formula
  desc "File-based task tracker CLI and MCP server for AI agent workflows"
  homepage "https://github.com/LHelge/bea-rs"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.7.3/bea-macos-aarch64"
      sha256 "080a3971f76be4c4ca4c0f5c435772c27ceb7da136d904317664b11a9e57fcb5"
    end
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.7.3/bea-macos-x86_64"
      sha256 "6cf41dc7c09a22dfb14834d644503b9e5c51356f459a6dfa13d623d7fa0a03fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/bea-rs/releases/download/v0.7.3/bea-linux-x86_64"
      sha256 "40d9c20d5138fdab281d9edb9359951453540f99b367c933a153e39ab8b72032"
    end
  end

  def install
    bin.install Dir["bea-*"].first => "bea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bea --version")
  end
end
