class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.18.3'
  sha256 '06f482b497bacd4538eff2a037b587e854451055ff3f086afe3c025c90b6a05f'
  url 'https://github.com/golemfactory/golem/releases/download/0.18.3/golem-0.18.3-macOS.tar.gz'

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
