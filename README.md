# Homebrew tap for Btop Desktop

Personal Homebrew tap for [Btop Desktop](https://github.com/Tim4c/BtopDesktop), an experimental
community app that integrates the btop system monitor into the macOS desktop.

## Requirements

- macOS 27 or later.
- Apple Silicon (ARM64).
- Homebrew.

## Install

```sh
brew install --cask Tim4c/tap/btop-desktop
```

The app is signed ad hoc and **not notarized by Apple**. If macOS blocks its first launch,
follow [Apple’s opening instructions](https://support.apple.com/102445) in System Settings →
Privacy & Security, only if you trust the download. Homebrew does not bypass Gatekeeper.

After opening the app, find the chart icon in the menu bar. Accessibility permission enables
focused Escape handling and Mission Control/App Exposé detection.

Installation has been tested on the maintainer’s Mac; feedback from other Macs is welcome.

## Update or uninstall

Quit Btop Desktop before updating:

```sh
brew update
brew upgrade --cask btop-desktop
```

Accessibility permission may need to be granted again after updates.

To uninstall:

```sh
brew uninstall --cask btop-desktop
```

User preferences are retained.

## Downloads and support

The cask downloads the application from [Btop Desktop releases](https://github.com/Tim4c/BtopDesktop/releases)
and verifies its SHA-256 checksum. The app bundles its runtime; no separate btop installation is needed.

See the [project documentation](https://github.com/Tim4c/BtopDesktop#readme) for setup and usage.
Report app problems in [Btop Desktop issues](https://github.com/Tim4c/BtopDesktop/issues).
