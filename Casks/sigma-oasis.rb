cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "7fecf5538c33172363ab8ed619bede827996a67f2d0aa0fe6893436fe0e4e65d",
         intel: "c9ea2d88f059f749ec5f2c6b91db5774a284e80cc5ac4ff38388b02b5f398ac8"

  url "https://github.com/CELCPG/SigmaOasis/releases/download/v#{version}/Sigma-Oasis-#{version}-mac-#{arch}.dmg"
  name "Sigma Oasis"
  desc "Private, local-first desktop AI chat powered by LM Studio"
  homepage "https://github.com/CELCPG/SigmaOasis"

  # Signed and notarized; updates itself via electron-updater from GitHub
  # Releases, so brew bootstraps the install and the app keeps itself current.
  auto_updates true

  depends_on macos: :ventura

  app "Sigma Oasis.app"

  zap trash: [
    "~/Library/Application Support/sigma-oasis",
    "~/Library/Caches/sigma-oasis",
    "~/Library/Logs/sigma-oasis",
    "~/Library/Preferences/com.sigmaoasis.app.plist",
    "~/Library/Saved Application State/com.sigmaoasis.app.savedState"
  ]
end
