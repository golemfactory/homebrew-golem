class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'
  url 'https://github.com/golemfactory/golem/releases/download/0.5.3/golem-macos-0.5.3.tar.gz'
  sha256 'f3317c7339f8b8b8f163a7381d0a1f8915dfd14a1647f2ab7e570bc5d1de6b2e'
  version '0.5.3'

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
