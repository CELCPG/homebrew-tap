cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "66e024fecc49475503e651ca263010db754ca4cede317ca1feb21e1e6da5f0da",
         intel: "0892ae711b6b73757ee7834bb0f70b776a11bb7e56fd949e6dfe5a431c67c2fe"

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
