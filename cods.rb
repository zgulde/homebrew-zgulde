class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.1.0'
  url 'https://github.com/zgulde/cods/archive/v2.1.0.tar.gz'
  sha256 '29bec535d9dbbc3808ae5c7952ec75039fd1c4caf96dbc1374d16eaff828a329'

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
