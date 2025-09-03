cask "browserino" do
  version "1.1.14"
  sha256 "0be58d10e75b7178e9b510198eed5a336b8700ca2f3513e17cfd35788b8684da"

  url "https://github.com/AlexStrNik/Browserino/releases/download/v#{version}/Browserino.zip"
  name "Browserino"
  desc "Browserino is a tiny browser selector for MacOS written in SwiftUI"
  homepage "https://github.com/AlexStrNik/Browserino"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Browserino.app"

  uninstall quit: "xyz.alexstrnik.Browserino"

  zap trash: "~/Library/Preferences/xyz.alexstrnik.Browserino.plist"
end
