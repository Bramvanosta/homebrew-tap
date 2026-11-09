cask "retake" do
  version "0.2.0"
  sha256 "f04b0724829addc5b363059d03c891819278544a75d77769731fd3ff2a0a9883"

  url "https://github.com/Bramvanosta/Retake/releases/download/v#{version}/Retake_#{version}_aarch64.dmg"
  name "Retake"
  desc "Product videos of a web app from a written scenario, with an MCP server for agents"
  homepage "https://retake.bramvanosta.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "retake@beta"
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Retake.app"
  binary "#{appdir}/Retake.app/Contents/Resources/bin/retake"

  zap trash: [
    "~/Library/Caches/local.retake.desktop",
    "~/Library/Preferences/local.retake.desktop.plist",
    "~/Library/Saved Application State/local.retake.desktop.savedState",
    "~/Library/WebKit/local.retake.desktop",
  ]
end
