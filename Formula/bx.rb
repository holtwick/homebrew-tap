class Bx < Formula
  desc "Launch apps in a macOS sandbox — only the project directory is accessible"
  homepage "https://github.com/holtwick/bx-mac"
  url "https://github.com/holtwick/bx-mac/releases/download/v0.12.0/bx.js"
  sha256 "b403a86e2f4f5fbf3bb7b4b884deb8f0337cff3269116d8d44f709f869b04df6"
  version "0.12.0"
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
