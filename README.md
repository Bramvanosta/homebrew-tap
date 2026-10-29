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
