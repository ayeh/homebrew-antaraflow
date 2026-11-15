cask "antaraflow" do
  version "0.1.9"
  sha256 "17e824d73d8dc5cec9ab5ac947907ea9a2790f7180ff7db821ec58d4178289d5"

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
