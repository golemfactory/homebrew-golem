class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.19.2'
  sha256 '606f88c3087624c17227781cf88d8b184abc3e74687e42098fc9edaf1af8a339'
  url 'https://github.com/golemfactory/golem/releases/download/0.19.2/golem-0.19.2-macOS.tar.gz'

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
