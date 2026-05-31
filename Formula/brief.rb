class Brief < Formula
  desc "Compact git snapshot for LLM session context"
  homepage "https://github.com/zpenka/brief"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/zpenka/brief/releases/download/v0.1.0/brief_darwin_amd64.tar.gz"
      sha256 "19848bb6f284121bd6fa369f1316f3d6e358e51339aa814b617bda08e4e725f6"
    end
    on_arm do
      url "https://github.com/zpenka/brief/releases/download/v0.1.0/brief_darwin_arm64.tar.gz"
      sha256 "72c3347ba9fae03eaa42f5fd64eaafcba6c9d931de6c068df1511ce1e9979739"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zpenka/brief/releases/download/v0.1.0/brief_linux_amd64.tar.gz"
      sha256 "1b76ad6b802c1636b8d3f0f07dd355881211ddfac843aecc5fdda3cad14e0a28"
    end
    on_arm do
      url "https://github.com/zpenka/brief/releases/download/v0.1.0/brief_linux_arm64.tar.gz"
      sha256 "a7aca69b65524305f838d687b56d5e679f76b232a2eca65cd73bf51f0938d443"
    end
  end

  def install
    bin.install "brief_#{OS.kernel_name.downcase}_#{Hardware::CPU.arch}" => "brief"
  end

  test do
    system "#{bin}/brief", "--version"
  end
end
