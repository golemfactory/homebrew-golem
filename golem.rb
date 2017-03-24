class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'
  url 'https://github.com/golemfactory/golem/releases/download/0.3.2/golem.0.3.2.tar.gz'
  version '0.3.2'
  sha256 "0de397ce6921b8c0145eddd308146d31cf197ce9b341085f371e3d12b47fa496"

  depends_on 'python'
  depends_on 'qt@5.7'
  depends_on 'docker-machine'
  depends_on 'xhyve'
  depends_on 'docker-machine-driver-xhyve'
  depends_on 'ethereum/ethereum/ethereum'
  depends_on 'ipfs'
  depends_on 'openexr'
  depends_on 'freeimage'

  def install

    # docker-machine-driver-xhyve need root owner and uid
    # https://github.com/zchee/docker-machine-driver-xhyve
    system "echo docker-machine-driver-xhyve need root owner and uid"
    system "sudo chown root:wheel #{HOMEBREW_PREFIX}/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve"
    system "sudo chmod u+s #{HOMEBREW_PREFIX}/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve"

    bin.install 'golemapp'
    bin.install 'golemcli'
    bin.install Dir['*']

  end
end