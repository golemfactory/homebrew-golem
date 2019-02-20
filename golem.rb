class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.19.0'
  sha256 'abd0a8b558be11ce842d36a490a7447618ded3f8edc48b86fe18a752472cf5fb'
  url 'https://github.com/golemfactory/golem/releases/download/0.19.0/golem-0.19.0-macOS.tar.gz'

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
