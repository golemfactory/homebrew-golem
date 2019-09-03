class Golemcli < Formula
  desc 'Command Line Interface for Golem'
  homepage 'https://github.com/golemfactory/golem-client'

  stable do
    version '0.1.9'
    url 'https://golem-releases.cdn.golem.network/releases/0.20.2/components/golemcli-osx-v0.1.9.tar.gz'
    sha256 '1aa8c3cb9ad3d58ba9baaf594b8425d8d574a8241be6cdd2cf2ed955578ed55d'
  end

  def install
    bin.install 'golemcli'
  end
end
