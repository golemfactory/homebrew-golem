class Golemcli < Formula
  desc 'Command Line Interface for Golem'
  homepage 'https://github.com/golemfactory/golem-client'

  stable do
    version '0.2.1'
    url 'https://golem-releases.cdn.golem.network/releases/0.21.0/components/golemcli-osx-v0.2.1.tar.gz'
    sha256 '7e708e13d504da6a45289aca2143b9f460deb261aaeeb68b2fc8b68e2f967e0e'
  end

  def install
    bin.install 'golemcli'
  end
end
