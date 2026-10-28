cask "ranch@beta" do
  version "0.4.0-rc.1"
  sha256 "bbdd6c3a1aba0e2bd152ae67c2b701ba09b5e0d5d056131eb79ae0bda942650e"

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
