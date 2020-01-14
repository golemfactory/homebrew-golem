class Golemcli < Formula
  desc 'Command Line Interface for Golem'
  homepage 'https://github.com/golemfactory/golem-client'

  stable do
    version '0.3.0'
    url 'https://golem-releases.cdn.golem.network/releases/0.22.0/components/golemcli-osx-v0.3.0.tar.gz'
    sha256 '424f01ba39ca6b99c3269d5e216ded22dbddd9b32553fa14ce673b1497155271'
  end

  def install
    bin.install 'golemcli'
  end
end
