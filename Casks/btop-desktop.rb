cask 'btop-desktop' do
  version '0.2.2'
  sha256 'f6ee1ad0d77f7d92ede399749896e2b30d6c2b10e37062d04f1138e77e045c7c'

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
