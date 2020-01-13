class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'

  version '0.22.0'
  sha256 'a0ca911173d6293bda75cdfa791ca5a1fd311854243010fb638707f282fa5bd0'
  url "https://golem-releases.cdn.golem.network/releases/0.22.0/golem-0.22.0-macOS.tar.gz"

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
