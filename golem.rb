class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'
  url 'https://github.com/golemfactory/golem/releases/download/0.5.1/golem-macos-0.5.1.tar.gz'
  sha256 'b179e0fccf01b13e94e7cf9bda4b5014e6d6e007f8142d2b6d5527fdc3c6aeca'
  version '0.5.1'

  depends_on 'qt'
  depends_on 'docker'
  depends_on 'docker-machine'
  depends_on 'xhyve'
  depends_on 'docker-machine-driver-xhyve'
  depends_on 'ipfs'
  depends_on 'openexr'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'openssl'


  def install

    # docker-machine-driver-xhyve need root owner and uid
    # https://github.com/zchee/docker-machine-driver-xhyve
    system 'echo docker-machine-driver-xhyve need root owner and uid'
    system "sudo chown root:wheel #{HOMEBREW_PREFIX}/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve"
    system "sudo chmod u+s #{HOMEBREW_PREFIX}/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve"

    bin.install 'golemapp'
    bin.install 'golemcli'
    bin.install Dir['*']

  end
end
