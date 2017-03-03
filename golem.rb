# Specify wheel resource's name as it is
class WheelCurlDownloadStrategy < CurlDownloadStrategy
  def initialize(name, resource)
    super
    @tarball_path = HOMEBREW_CACHE.join("#{name}")
  end
end

# Use WheelCurlDownloadStrategy for download
# and use proper name of wheel resource (from url)
class WheelResource < Resource
  def downloader
    download_strategy = WheelCurlDownloadStrategy
    download_strategy.new(File.basename(url), Download.new(self))
  end
end

# Change 'pip install' parameters
Language::Python::Virtualenv::Virtualenv.class_eval do
  private

  def do_install(targets)
    targets = [targets] unless targets.is_a? Array
    @formula.system @venv_root/"bin/pip", "install",
                    "-v", *targets
  end
end

class Golem < Formula
  desc 'Golem Worldwide Supercomputer'
  homepage 'https://github.com/golemfactory/golem/'
  url "https://github.com/golemfactory/golem/archive/0.3.4.tar.gz"
  version '0.3.4'
  sha256 "aa6a585e2c4cd576f14a90868995275967271bf7e9793092326e01ee54725c0f"


  depends_on 'python'
  depends_on 'qt@5.7'
  depends_on 'docker-machine'
  depends_on 'xhyve'
  depends_on 'docker-machine-driver-xhyve'
  depends_on 'ethereum/ethereum/ethereum'
  depends_on 'ipfs'
  depends_on 'openexr'


  resource 'sip', WheelResource do
    url 'https://github.com/golemfactory/golem/wiki/wheels/sip-4.19-cp27-cp27m-macosx_10_12_x86_64.whl'
    sha256 '65e8670bf1f72c54a1cdc0a4756c42951530f9bce7bac7ac5d2df99a727f37c4'
  end

  resource 'PyQt5', WheelResource do
    url 'https://github.com/golemfactory/golem/wiki/wheels/PyQt5-5.7.1-cp27-cp27m-macosx_10_12_x86_64.whl'
    sha256 '1a5ed4c81a53607731aee5a42999ec142ad8ab0fb7f9869dc0d1b728221ab182'
  end


  include Language::Python::Virtualenv

  def install

    # docker-machine-driver-xhyve need root owner and uid
    # https://github.com/zchee/docker-machine-driver-xhyve
    system "echo docker-machine-driver-xhyve need root owner and uid"
    system "sudo chown root:wheel #{HOMEBREW_PREFIX}/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve"
    system "sudo chmod u+s #{HOMEBREW_PREFIX}/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve"


    prefix.install Dir['*']

    cd prefix do

      #virtualenv DEST_DIR
      venv = virtualenv_create(libexec)

      res = resource('sip')
      res.stage do
        #pip install cached_location
        venv.pip_install(String(res.downloader.cached_location))
      end

      res = resource('PyQt5')
      res.stage do
        #pip install cached_location
        venv.pip_install(String(res.downloader.cached_location))
      end

      f = File.open("requirements.txt") or die "Unable to open requirements.txt..."
      f.each_line { |line|
        #pip install requirement
        venv.pip_install(line)
      }

      #python setup.py install
      system "python", *Language::Python.setup_install_args(prefix)

    end

  end

end
