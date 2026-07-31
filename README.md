# Sigma Oasis Homebrew tap

```bash
brew tap CELCPG/tap
brew install --cask sigma-oasis
```

Sigma Oasis is a private, local-first desktop AI chat powered by LM Studio.
The app is signed, notarized, and updates itself — Homebrew is just the
easiest way to get it onto your Mac. Source and other platforms:
https://github.com/CELCPG/SigmaOasis

Uninstall, including app data:

```bash
brew uninstall --cask --zap sigma-oasis
```

## Updating this tap after a release

1. Bump `version` in `Casks/sigma-oasis.rb`.
2. Refresh the two SHA-256s:

   ```bash
   for arch in arm64 x64; do
     curl -sL "https://github.com/CELCPG/SigmaOasis/releases/download/v<version>/Sigma-Oasis-<version>-mac-$arch.dmg" | shasum -a 256
   done
   ```

3. Commit and push — no PR process needed for your own tap.
