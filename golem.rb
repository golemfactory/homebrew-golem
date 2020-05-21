class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.23.1'
  sha256 'de175db1aed8691d710de40bdc20648b92245132158d78508c1406cd5529d37d'
  url "https://golem-releases.cdn.golem.network/releases/0.23.1/golem-0.23.1-macOS.tar.gz"

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
