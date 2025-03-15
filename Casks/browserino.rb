cask "browserino" do
  version "1.1.9"
  sha256 "a2e18d4318ce0df347f79e9645c82cbe92a3c50e2d11afebecdc0531bac44f4a"

  url "https://github.com/AlexStrNik/Browserino/releases/download/v#{version}/Browserino.zip"
  name "Browserino"
  desc "Browserino is a tiny browser selector for MacOS written in SwiftUI"
  homepage "https://github.com/AlexStrNik/Browserino"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Browserino.app"

  uninstall quit: "xyz.alexstrnik.Browserino"

  zap trash: "~/Library/Preferences/xyz.alexstrnik.Browserino.plist"
end

