class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.20.0'
  sha256 'bc2e91eb78bceb432dac6e588dd80fa0b32760c02f74795f9d41badfcf75994c'
  url 'https://github.com/golemfactory/golem/releases/download/0.20.0/golem-0.20.0-macOS.tar.gz'

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
