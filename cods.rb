class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '0.2.3'
  url 'https://github.com/zgulde/cods/archive/v0.2.3.tar.gz'
  sha256 '5bdb9095683f0250de14c7c2d69bdf73ee2c92cbf85a85af23b30f7648633f2d'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '0.3.0-beta'
  end

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'CHANGELOG.md' # this contains version information
    prefix.install 'templates'
  end
end
