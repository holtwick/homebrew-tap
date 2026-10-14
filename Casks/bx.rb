cask "bx" do
  version :latest
  sha256 :no_check

  url "https://bxsandbox.app/latest"
  name "BX"
  name "BX Sandbox"
  desc "Run apps in a sandbox that only sees the folders you allow"
  homepage "https://bxsandbox.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "BX.app"

  zap trash: [
    "~/.bx",
    "~/.bx-aliases",
    "~/Applications/bx",
    "~/Library/Caches/de.holtwick.homebrew.bx",
    "~/Library/HTTPStorages/de.holtwick.homebrew.bx",
    "~/Library/Logs/bx",
    "~/Library/Preferences/de.holtwick.homebrew.bx.plist",
  ]
end
