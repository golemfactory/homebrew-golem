cask 'golem' do
  name 'Golem Worldwide Supercomputer GUI'
  homepage 'https://github.com/golemfactory/golem-electron/'

  version '0.1.12'
  sha256 '63200520fa2fcebe94f8fdf7c05b33290b405739d17d9afc417a596a07a6e99f'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  auto_updates true
  depends_on formula: 'golemfactory/golem/golem'
  depends_on cask: 'golem-mainnet-launcher'

  app 'golem.app'
end
