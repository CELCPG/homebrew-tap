cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7"
  sha256 arm:   "262b41fb8419061d27533df5dab5597090297e05a8501206d119635179a908bb",
         intel: "6f2c64cb0ec5de6dec790bbb8e053302283c7caf1e25aeb21ccd29a3ec68a951"

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
