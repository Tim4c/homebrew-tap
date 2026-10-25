cask 'btop-desktop' do
  version '0.2.1'
  sha256 'b19326ee0c755ec51d410ddfb0e3cc18fd8db8a437a55ff836a9bec24bc82f71'

  url "https://github.com/Tim4c/BtopDesktop/releases/download/v#{version}/BtopDesktop-#{version}-macos-arm64.zip"
  name 'Btop Desktop'
  desc 'System monitor integrated into the desktop'
  homepage 'https://github.com/Tim4c/BtopDesktop'

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app 'BtopDesktop.app'

  caveats <<~EOS
    Experimental build, signed ad hoc and not notarized by Apple.
    macOS may block the first launch. See the release notes for opening instructions.
    Accessibility permission may need to be granted again after updates.
  EOS
end
