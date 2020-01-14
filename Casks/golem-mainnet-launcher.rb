cask 'golem-mainnet-launcher' do
  version '1.2'
  sha256 '9605d1e77ce567a0a89c9c19bd61c9aa9f0c29f69e5c5e2f8c3a037bca178b4a'
  url "https://golem-releases.cdn.golem.network/releases/0.22.0/components/Golem-mainnet-v#{version.major_minor}.zip"

  name 'Golem Worldwide Supercomputer (mainnet)'
  homepage 'https://github.com/golemfactory/golem-mainnet-launcher-macos/'

  auto_updates true

  app 'golem mainnet.app'
end
