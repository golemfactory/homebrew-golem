class Golemcli < Formula
  desc 'Command Line Interface for Golem'
  homepage 'https://github.com/golemfactory/golem-client'

  stable do
    version '0.3.1'
    url 'https://golem-releases.cdn.golem.network/releases/0.23.0/components/golemcli-osx-v0.3.1.tar.gz'
    sha256 'd465243eff42f38bcf758de8467db340793984479a7c57c900025e2491469b61'
  end

  def install
    bin.install 'golemcli'
  end
end
