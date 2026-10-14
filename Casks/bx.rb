cask "bx" do
  version "1.4,14000"
  sha256 "7c51c913bf97c746348ed2cf3b4c96bf0583e5476ef8b640d4352f715dfe66ac"

  url "https://bxsandbox.app/download/macos/BX-#{version.csv.first}-#{version.csv.second}.zip"
  name "BX"
  name "BX Sandbox"
  desc "Run apps in a sandbox that only sees the folders you allow"
  homepage "https://bxsandbox.app/"

  livecheck do
    url "https://bxsandbox.app/updater-macos"
    strategy :sparkle
  end

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
