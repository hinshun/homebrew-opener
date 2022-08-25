class Opener < Formula
  desc "Open URL from the remote"
  homepage "https://github.com/hinshun/opener"
  version "0.2.0"
  url "https://github.com/hinshun/opener/releases/download/v0.2.0/opener-darwin-arm64.zip"
  sha256 "f22a16794b07af7f2ce1f3dac251054b5d83964b1826868135004e25b2695d21"
  license "MIT"

  def install
    bin.install "opener"
  end

  service do
    run opt_bin/"opener"
    keep_alive true
    working_dir HOMEBREW_PREFIX
    log_path var/"log/opener.log"
    error_log_path var/"log/opener.log"
  end
end
# vim: set fenc=utf-8 :
