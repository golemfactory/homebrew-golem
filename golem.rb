class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.18.1'
  sha256 'e75d8078bac3ebb76138f64ca7e655035e014943238f1eca8be799397e091532'
  url 'https://github.com/golemfactory/golem/releases/download/0.18.1/golem-0.18.1-macOS.tar.gz'

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
