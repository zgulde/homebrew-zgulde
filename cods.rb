class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.1.6'
  url 'https://github.com/zgulde/cods/archive/v2.1.6.tar.gz'
  sha256 'a5505ccb7b78eef8e904747978fd494280e83b627f16569dff086a9de2808675'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.3.0-beta'
  end

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
