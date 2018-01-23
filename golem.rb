class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.11.0'
  sha256 'b182f7165601bdc8894a410d1c2b0ad8bfc9cd63b0d1a58748b3d70421c04128'
  url 'https://github.com/golemfactory/golem/releases/download/0.11.0/golem-0.11.0-macOS.tar.gz'

  depends_on 'docker'
  depends_on 'docker-machine'
  depends_on 'xhyve'
  depends_on 'docker-machine-driver-xhyve'
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

  def post_install
    # docker-machine-driver-xhyve need root owner and uid
    # https://github.com/zchee/docker-machine-driver-xhyve

    opoo "\n\n\nPlease execute the following commands manually:
    sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
    sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve \n\n\n"
  end
end
