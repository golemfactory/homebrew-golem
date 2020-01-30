class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.22.1'
  sha256 'e7caf6a0a04fb944da11b4d43b58d43d62feace0d1db2e6915142821d033aa23'
  url "https://golem-releases.cdn.golem.network/releases/0.22.1/golem-0.22.1-macOS.tar.gz"

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
