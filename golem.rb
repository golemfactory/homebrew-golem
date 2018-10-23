class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.18.0'
  sha256 '6f353afe5aa1135460db4f2289846e998500c5101663bbdad6d34078d1e2d430'
  url 'https://github.com/golemfactory/golem/releases/download/0.18.0/golem-0.18.0-macOS.tar.gz'

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
