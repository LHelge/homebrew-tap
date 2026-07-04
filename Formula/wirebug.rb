class Wirebug < Formula
  desc "Text-defined electrical schematics and wiring harnesses"
  homepage "https://github.com/LHelge/wirebug"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/LHelge/wirebug/releases/download/v0.1.0/wirebug-macos-aarch64"
      sha256 "a54b34c8d68153ba63497fed2b3c1639a96b36f32d05dbee6051a94c68d8a8c2"
    end
    on_intel do
      url "https://github.com/LHelge/wirebug/releases/download/v0.1.0/wirebug-macos-x86_64"
      sha256 "f268531e39edd1e6350e8ad268db631ccc42f06533bf2804b49b531902f2e699"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/wirebug/releases/download/v0.1.0/wirebug-linux-x86_64"
      sha256 "878f5b69aaab1017a3a97ef613de0fed8796b10851c36850ab412e2ffc14fd5d"
    end
  end

  def install
    bin.install Dir["wirebug-*"].first => "wirebug"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wirebug --version")
  end
end
