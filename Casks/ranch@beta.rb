cask "ranch@beta" do
  version "0.5.0-rc.1"
  sha256 "1acf123fb24d4faa0f08adb276f18d3290524d2808421c9ad52cfa6492e53156"

  url "https://github.com/Bramvanosta/Ranch/releases/download/v#{version}/Ranch_#{version}_universal.dmg"
  name "Ranch"
  desc "Desktop client for BullMQ queues, with an MCP server for agents"
  homepage "https://github.com/Bramvanosta/Ranch"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-[0-9A-Za-z.-]+)?)$/i)
    strategy :github_releases
  end

  auto_updates true
  conflicts_with cask: "ranch"
  depends_on :macos

  app "Ranch.app"

  zap trash: [
    "~/Library/Application Support/dev.ranch.app",
    "~/Library/Caches/dev.ranch.app",
    "~/Library/Preferences/dev.ranch.app.plist",
    "~/Library/Saved Application State/dev.ranch.app.savedState",
    "~/Library/WebKit/dev.ranch.app",
  ]
end
