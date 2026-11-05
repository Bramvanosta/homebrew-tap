# Bramvanosta/homebrew-tap

Homebrew casks for the apps I build.

```bash
brew tap bramvanosta/tap
brew install --cask bramvanosta/tap/<app>
```

## Apps

### Ranch

[Ranch](https://github.com/Bramvanosta/Ranch) is a desktop client for BullMQ.

```bash
brew install --cask bramvanosta/tap/ranch        # stable releases
brew install --cask bramvanosta/tap/ranch@beta   # release candidates too
```

Ranch updates itself; `brew upgrade --cask --greedy` also picks up a new version. Its casks are written by Ranch's release workflow.

### Retake

[Retake](https://github.com/Bramvanosta/Video) turns a written scenario into a finished product video of a web app.

```bash
brew install --cask bramvanosta/tap/retake        # stable releases
brew install --cask bramvanosta/tap/retake@beta   # release candidates too
```

macOS 15 or later, Apple silicon. The cask also links the `retake` command. Retake updates itself; `brew upgrade --cask --greedy` also picks up a new version. Its casks are written by Retake's release workflow, from its first release (v0.2.0) on.
