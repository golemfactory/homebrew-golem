class Golemcli < Formula
  desc 'Command Line Interface for Golem'
  homepage 'https://github.com/golemfactory/golem-client'

  stable do
    version '0.3.2'
    url 'https://golem-releases.cdn.golem.network/releases/0.23.1/components/golemcli-osx-v0.3.2.tar.gz'
    sha256 'fb2449f1155d34671f7d5885653bbd7b15776903246db9d3e7094bd8a20d5d46'
  end

  def install
    bin.install 'golemcli'
  end
end
