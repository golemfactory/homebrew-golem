class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'
  url 'https://github.com/golemfactory/golem/releases/download/0.6.0/golem-macos-0.6.0.tar.gz'
  sha256 '27adea085abf83d52c9d966351ad552db6941b0b241c71744e845bf456a9e29f'
  version '0.6.0'

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
  depends_on 'ethereum/ethereum/ethereum'


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
