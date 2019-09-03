class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.20.2'
  sha256 'cf4bc98c2298673c5e4849c23739ca49f310f3f0cc865d2427da8766db6de648'
  url "https://golem-releases.cdn.golem.network/releases/0.20.2/golem-0.20.2-macOS.tar.gz"

  depends_on 'openexr'
  depends_on 'gmp'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'golemcli'
  depends_on 'openssl'

  def install
        bin.install 'golemapp'
        bin.install Dir['*']
  end
end
