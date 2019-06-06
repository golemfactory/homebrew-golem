class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  stable do
    version '0.19.2'
    sha256 '606f88c3087624c17227781cf88d8b184abc3e74687e42098fc9edaf1af8a339'
    url 'https://github.com/golemfactory/golem/releases/download/0.19.2/golem-0.19.2-macOS.tar.gz'
  end

  devel do
    version '0.20.0'
    sha256 '4c32eb27c3fbc02984ccf39083be67694c528faa59c02859863372faa26457a0'
    url "https://github.com/golemfactory/golem-dev/releases/download/0.20.0/golem-0.19.2+dev561.gafd83ae-macOS.tar.gz"
  end

  depends_on 'golemfactory/hyperg/hyperg'
  depends_on 'openexr'
  depends_on 'gmp'
  depends_on 'freeimage'
  depends_on 'openssl'

  def install
        bin.install 'golemapp'
        bin.install 'golemcli'
        bin.install Dir['*']
  end
end
