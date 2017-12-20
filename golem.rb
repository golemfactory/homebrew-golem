class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.10.0'
  sha256 '40eb03fbe3d81eac919dab13eb1805e52f71e3f5d4d43a252b37d2a2a03d259a'
  url 'https://github.com/golemfactory/golem/releases/download/0.10.0/golem-macos-0.10.0.tar.gz'

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
