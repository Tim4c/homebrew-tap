cask "btop-desktop" do
  version "0.2.0"
  sha256 "8489b9b78ede737a0b4d50f29ae44450d3375e3994a81924c68220e8c5c26d7e"

  url "https://github.com/Tim4c/BtopDesktop/releases/download/v#{version}/BtopDesktop-#{version}-macos-arm64.zip"
  name "Btop Desktop"
  desc "The btop system monitor integrated into the macOS desktop"
  homepage "https://github.com/Tim4c/BtopDesktop"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BtopDesktop.app"

  caveats <<~EOS
    Experimental build, signed ad hoc and not notarized by Apple.
    macOS may block the first launch. See the release notes for opening instructions.
    Accessibility permission may need to be granted again after updates.
  EOS
end
