cask "ranch@beta" do
  version "0.5.0"
  sha256 "f9730553e9561aba2d325877caf5758305f7b7d460d542b270d92d6b10759505"

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
