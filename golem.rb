class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.21.0'
  sha256 'd79efe7a501d7eb43decf10fdd4d0367bd1578dd364d4e79264a51b1e6ff5c3f'
  url "https://golem-releases.cdn.golem.network/releases/0.21.0/golem-0.21.0-macOS.tar.gz"

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
