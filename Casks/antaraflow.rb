cask "antaraflow" do
  version "0.1.4"
  sha256 "ddb050fe0e378981808345ac51723162555aa94c09df4ab54d30d1bb50269ffe"

  url "https://github.com/ayeh/antaraFlow-releases/releases/download/v#{version}/antaraFlow-#{version}.dmg"
  name "antaraFlow"
  desc "Native multi-service messaging workspace"
  homepage "https://github.com/ayeh/antaraFlow-releases"

  auto_updates true

  depends_on macos: :ventura

  app "antaraFlow.app"

  zap trash: [
    "~/.antara-workspace",
    "~/Library/LaunchAgents/my.antara.workspace.plist",
    "~/Library/WebKit/my.antara.workspace",
  ]
end
