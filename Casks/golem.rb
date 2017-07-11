cask 'golem' do
  version '0.1.1'
  sha256 '876762922b7ba8a9fcdfbeb141abb8e828e311d1ee601e3bf507d3aac5b635e0'
  url "https://github.com/golemfactory/golem-electron/releases/download/#{version.major_minor_patch}/golem-electron-macos-#{version.major_minor_patch}.dmg"

  name 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  auto_updates true
  depends_on formula: 'golemfactory/golem/golem'

  app 'golem.app'
end
