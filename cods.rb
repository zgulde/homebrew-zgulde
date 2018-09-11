class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.1.5'
  url 'https://github.com/zgulde/cods/archive/v2.1.5.tar.gz'
  sha256 '42c7cc7506a8abd9493a315192f2496e2c05f2f04757ba91f440d4fb1809168b'

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
