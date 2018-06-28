class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.16.1'
  sha256 '89e097e9b3dfd7e04b50158429320997d2a7de9093a2f5bb4699793d6d930719'
  url 'https://github.com/golemfactory/golem/releases/download/0.16.1/golem-0.16.1-macOS.tar.gz'

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
