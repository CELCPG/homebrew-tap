cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "001ee2ca005513dcfcd00a74ce5dac977ba14f3b2a7d9ecb3e6fd06b0413379f",
         intel: "b34a9efd2dd84b46ecb35e738920fc9ad8ca076f7059b3e936ee03cdd6da3a64"

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
