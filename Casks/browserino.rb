cask "browserino" do
  version "1.1.9"
  sha256 "06b112156e5809fdf3b450609d8095ee8c6af23993d6c4c0cd80a6e227ee72f1"

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

