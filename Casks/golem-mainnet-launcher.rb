cask 'golem-mainnet-launcher' do
  version '1.1'
  sha256 '66bcdd193378ab4f7df6504d4d9b81510e3e6187e6a0320b4951449dc9a1656d'
  url "https://golem-releases.cdn.golem.network/releases/0.20.2/components/Golem-mainnet-v#{version.major_minor}.zip"

  name 'Golem Worldwide Supercomputer (mainnet)'
  homepage 'https://github.com/golemfactory/golem-mainnet-launcher-macos/'

  auto_updates true

  app 'golem mainnet.app'
end
