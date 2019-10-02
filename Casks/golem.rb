cask 'golem' do
  name 'Golem Worldwide Supercomputer GUI'
  homepage 'https://github.com/golemfactory/golem-electron/'

  version '0.2.3'
  sha256 '279a497891ccca136386532dddaba0ac765765162ad961652932cecf7780d02b'
  url "https://golem-releases.cdn.golem.network/releases/0.21.0/components/golem-electron-beta-macos-#{version.major_minor_patch}.dmg"

  auto_updates true
  depends_on formula: 'golemfactory/golem/golem'
  depends_on cask: 'golem-mainnet-launcher'
  depends_on cask: 'docker'

  app 'golem.app'

  # Creates a symlink for the newly installed 'docker' binary
  postflight do
    FileUtils.ln_sf("/Applications/Docker.app/Contents/Resources/bin/docker", "/usr/local/bin/docker")
  end
  # Removes the symlink on deinstallation
  uninstall delete: "/usr/local/bin/docker"
end
