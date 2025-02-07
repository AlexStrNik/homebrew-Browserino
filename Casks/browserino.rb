cask "browserino" do
  version "1.1.8"
  sha256 "90e6026feaa5dc03e9ae9cf8812baacbb17aa5eef5c744cd5f5a08b4c91fb132"

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

