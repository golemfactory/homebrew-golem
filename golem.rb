class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.20.0'
  sha256 '246c488fdcaa4b722a3fdecb1f3a73558ae1c86eb08717cc38463c769a9adca6'
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
