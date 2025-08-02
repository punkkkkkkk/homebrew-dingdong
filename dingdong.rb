class Dingdong < Formula
  desc "🎭 Karan's Ultimate Prank v3.5 - Final working edition"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.5.0"
  sha256 "CALCULATE_NEW_HASH"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "🎭 Karan's Ultimate Prank v3.5 - FINAL WORKING EDITION!"
    ohai "🚀 No overlapping voices, guaranteed duplication"
    
    system "#{bin}/prank.sh #{pkgshare}/payload.png"
  end
end
