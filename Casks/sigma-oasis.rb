cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "4.5.0"
  sha256 arm:   "72ccf3c9f61798d5bf82cb5f367ec90957d53be2a7fb4a28c38b1252549ffa61",
         intel: "cf2f9be54b76ce1c47defd16f5f556ed6935b51f4e79b8eb7747b7571e164a55"

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
