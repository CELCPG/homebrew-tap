cask "sigma-oasis" do
  arch arm: "arm64", intel: "x64"

  version "1.4.5"
  sha256 arm:   "7eefb3fd1fa7a89523261ceff064fe4866648089833bce133fd309187de3124d",
         intel: "d70a3a8ceec57eed441657c60766d6f42e1f838fb7adab5ad5a82151a5ae3a11"

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
