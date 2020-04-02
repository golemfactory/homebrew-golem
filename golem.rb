class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.23.0'
  sha256 '4a5e5cf73042e6f911d3a9a82dd53e5e9e444b0986d39c0c5fba06237fd608c8'
  url "https://golem-releases.cdn.golem.network/releases/0.23.0/golem-0.23.0-macOS.tar.gz"

  depends_on 'openexr'
  depends_on 'gmp'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'golemcli'
  depends_on 'openssl'

  def install
        bin.install 'golemapp'
        bin.install Dir['*']
  end
end
