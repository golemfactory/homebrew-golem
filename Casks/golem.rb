cask 'golem' do
  name 'Golem Worldwide Supercomputer GUI'
  homepage 'https://github.com/golemfactory/golem-electron/'

  version '0.1.15'
  sha256 'fb687b9184f7b12bdb3a8a86fb709ce73c2e7f82f43c075b9e6a83b88a53fd95'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  auto_updates true
  depends_on formula: 'golemfactory/golem/golem'
  depends_on cask: 'golem-mainnet-launcher'

  app 'golem.app'
end
