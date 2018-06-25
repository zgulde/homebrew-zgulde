class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.0.0'
  url 'https://github.com/zgulde/cods/archive/v2.0.0.tar.gz'
  sha256 'e6b87942856ceb86555cc6c1d046bd547f9fbc273b0071bfd2711b6a05aa093e'

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
