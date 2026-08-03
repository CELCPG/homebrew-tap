cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "6e12e8f777bd103813f7323897beab587b2e15a55cc0d1345b34d95778463146",
         intel: "813980fac9484389b148b48a79c71df2ffabbd6b4c0094d64b718092172e4d6c"

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
