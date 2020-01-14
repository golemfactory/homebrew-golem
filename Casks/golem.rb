cask 'golem' do
  name 'Golem Worldwide Supercomputer GUI'
  homepage 'https://github.com/golemfactory/golem-electron/'

  version '0.2.4'
  sha256 '6df93056df880acf67e80995b2da52a989e62b855d82a8f77893346f79bbc7dd'
  url "https://golem-releases.cdn.golem.network/releases/0.22.0/components/golem-electron-beta-macos-#{version.major_minor_patch}.dmg"

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
