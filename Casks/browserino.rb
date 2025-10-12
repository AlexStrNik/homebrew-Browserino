cask "browserino" do
  version "1.1.15"
  sha256 "ede6926e8202976250c544b5468d3211f4578cd805faa02174d2e6c8dc839bac"

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
