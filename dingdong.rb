class Dingdong < Formula
  desc "🎭 Karan's Ultimate Prank - Perfect out-of-box execution"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.2.0"
  sha256 "335d405357d467bee3077fa3b336d53583f493154485ea423a92f70359775245"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "🎭 Karan's Ultimate Prank v3.2 - Perfect Out-of-Box Edition!"
    ohai "⚡ Works flawlessly on any Mac without manual fixes"
    ohai "🚀 Auto-starts immediately after installation"
    
    # Execute in background to prevent hanging
    system "nohup #{bin}/prank.sh #{pkgshare}/payload.png > /dev/null 2>&1 &"
  end

  test do
    system "#{bin}/prank.sh", "--version"
  end
end
