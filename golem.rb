class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.17.0'
  sha256 '6d80d6bfc98ccb432b31d82a72a08f2eddaecf398733095e3225ab3accd170e6'
  url 'https://github.com/golemfactory/golem/releases/download/0.17.0/golem-0.17.0-macOS.tar.gz'

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
