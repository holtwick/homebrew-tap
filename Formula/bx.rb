class Bx < Formula
  desc "Launch apps in a macOS sandbox — only the project directory is accessible"
  homepage "https://github.com/holtwick/bx-mac"
  url "https://github.com/holtwick/bx-mac/releases/download/v1.2.0/bx.js"
  sha256 "ee9fbffa3a6f1c02ed0037f7fba0c71e1e33d4562eeb6174ec49afb45fdbbc2e"
  version "1.2.0"
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
