cask "antaraflow" do
  version "0.1.13"
  sha256 "4f162b61246011cd0308ea8ba4bf50fd5e263be3cac2150b56ff621df21a0f91"

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
