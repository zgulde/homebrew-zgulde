class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.0.1'
  url 'https://github.com/zgulde/cods/archive/v2.0.1.tar.gz'
  sha256 '8793dad5f641e00e5777d3affdc875f52632599980507f5440c9c62e66b37599'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.3.0-beta'
  end

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'CHANGELOG.md' # this contains version information
    prefix.install 'templates'
  end
end
