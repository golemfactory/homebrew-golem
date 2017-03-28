class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'
  url 'https://github.com/golemfactory/golem/releases/download/0.3.2/golem-0.3.2.tar.gz'
  sha256 '1eba95e3a4baa93c1589385b44c0330e02f59b24c5294da36df310f45591bb4f'
  version '0.3.2'

  depends_on 'qt@5.7'
  depends_on 'docker-machine'
  depends_on 'xhyve'
  depends_on 'docker-machine-driver-xhyve'
  depends_on 'ethereum/ethereum/ethereum'
  depends_on 'ipfs'
  depends_on 'openexr'
  depends_on 'freeimage'
  depends_on 'golemfactory/hyperg/hyperg'

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
