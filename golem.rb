class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.19.1'
  sha256 'be0b7b30384d5d849c226fd8c594b35684bca12569747871e8b735f74a02d0d2'
  url 'https://github.com/golemfactory/golem/releases/download/0.19.1/golem-0.19.1-macOS.tar.gz'

  depends_on 'openexr'
  depends_on 'gmp'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'openssl'

  def install
        bin.install 'golemapp'
        bin.install 'golemcli'
        bin.install Dir['*']
  end
end
