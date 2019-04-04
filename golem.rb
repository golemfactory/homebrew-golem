class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.19.1'
  sha256 '9aa93d1652060f845313099bfaabab74349905f76fe7a7875b17c7123abd1322'
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
