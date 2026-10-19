cask "derivate" do
  version "1.1.0"
  sha256 "85a9dfa0bd7786a20041df29a687ee001fcb626a7c0211f0e364298748d3e643"

  url "https://github.com/jkroso/derivate/releases/download/v#{version}/Derivate-#{version}.zip"
  name "Derivate"
  desc "Menu bar app that makes your passwords from your name and master password"
  homepage "https://github.com/jkroso/derivate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Derivate.app"

  uninstall quit: "dev.derivate.app"

  zap trash: "~/Library/Application Support/Derivate"
end
