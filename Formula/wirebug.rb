class Wirebug < Formula
  desc "Text-defined electrical schematics and wiring harnesses"
  homepage "https://github.com/LHelge/wirebug"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/LHelge/wirebug/releases/download/v0.2.0/wirebug-macos-aarch64"
      sha256 "9015a43d1fa7d2cccc29cfc15beca8edddfd3c9abda11afb62ebbcd1a7fea37a"
    end
    on_intel do
      url "https://github.com/LHelge/wirebug/releases/download/v0.2.0/wirebug-macos-x86_64"
      sha256 "441af65045c98d8c36acd5aaffed47e692df0891238d1247933062d942643f4c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LHelge/wirebug/releases/download/v0.2.0/wirebug-linux-x86_64"
      sha256 "b1284701a61d17785bab9ecdf7696897d1f5dd1d1302c2dfa8f26058f2639de8"
    end
  end

  def install
    bin.install Dir["wirebug-*"].first => "wirebug"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wirebug --version")
  end
end
