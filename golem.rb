class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.18.2'
  sha256 '8274d1a53ff11be6fa9bb91a1ed0f0c7afb6eba003acd504de8e3f1624bebe8f'
  url 'https://github.com/golemfactory/golem/releases/download/0.18.2/golem-0.18.2-macOS.tar.gz'

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
