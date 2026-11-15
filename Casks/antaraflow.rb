cask "antaraflow" do
  version "0.1.8"
  sha256 "6fe49805fcd806b1d4e54a57685eb2ec9261df2ed4954d0db7d7e1104a447e07"

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
