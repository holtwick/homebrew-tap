class Bx < Formula
  desc "Launch apps in a macOS sandbox — only the project directory is accessible"
  homepage "https://github.com/holtwick/bx-mac"
  url "https://github.com/holtwick/bx-mac/releases/download/v0.5.0/bx.js"
  sha256 "4511913fa3c4a9832e2eabbed9f5588cbd2d48b0fa1ce575d78d8b740ab6248d"
  version "0.5.0"
  license "MIT"

  depends_on "node"
  depends_on :macos

  def install
    bin.install "bx.js" => "bx"
  end

  test do
    assert_match "sandbox:", shell_output("#{bin}/bx 2>&1", 1)
  end
end
