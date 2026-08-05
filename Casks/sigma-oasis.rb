cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "b2a83cd1ec4d5ce35b3f92bd0b6823fd275f7afe1fcd6e553897ffc12dc42b90",
         intel: "f0dfef50bed7fcec750e50df363c215bd0a2343d9b4cc0669b16ee6bc79e3821"

  url "https://github.com/CELCPG/SigmaOasis/releases/download/v#{version}/Sigma-Oasis-#{version}-mac-#{arch}.dmg"
  name "Sigma Oasis"
  desc "Private, local-first desktop AI chat powered by LM Studio"
  homepage "https://github.com/CELCPG/SigmaOasis"

  # Signed and notarized; updates itself via electron-updater from GitHub
  # Releases, so brew bootstraps the install and the app keeps itself current.
  auto_updates true

  depends_on macos: :big_sur

  app "Sigma Oasis.app"

  zap trash: [
    "~/Library/Application Support/sigma-oasis",
    "~/Library/Caches/sigma-oasis",
    "~/Library/Logs/sigma-oasis",
    "~/Library/Preferences/com.sigmaoasis.app.plist",
    "~/Library/Saved Application State/com.sigmaoasis.app.savedState"
  ]
end
