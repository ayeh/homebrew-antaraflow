cask "antaraflow" do
  version "0.1.0"
  sha256 "179f16cac250526610e1ed20db2c4d3334317988a31b0fddd620de617e44ff24"

  url "https://github.com/ayeh/antaraFlow-releases/releases/download/v#{version}/antaraFlow-#{version}.dmg"
  name "antaraFlow"
  desc "Native multi-service messaging workspace"
  homepage "https://github.com/ayeh/antaraFlow-releases"

  auto_updates true

  depends_on macos: ">= :ventura"

  app "antaraFlow.app"

  zap trash: [
    "~/.antara-workspace",
    "~/Library/LaunchAgents/my.antara.workspace.plist",
    "~/Library/WebKit/my.antara.workspace",
  ]
end
