class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.20.0'
  sha256 '6895d303aa5c34ed3a64230297b6bce7aca39c8dfeabf48d090a29f1425fa612'
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
