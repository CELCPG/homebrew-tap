cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "ba684f204f7a014e9c39465225f4c6bfb4039dec64243335bd5a3d82705e4840",
         intel: "3a3a0baec7a4f3693c88d127f0402140439abee984dfae56080a2608cf204988"

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
