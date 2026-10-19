cask "derivate" do
  version "1.1.1"
  sha256 "097dc6450faccc379b3a769416db1c63188d38e07983020d19956af6611ef8e0"

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
