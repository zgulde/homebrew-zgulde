class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '1.1.0'
  url 'https://github.com/zgulde/cods/archive/v1.1.0.tar.gz'
  sha256 '1a230fca87eb4dc32d476b74e712d0f07b2833abd5090d3505d59abc711edf9a'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.2.0-beta'
  end

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'CHANGELOG.md' # this contains version information
    prefix.install 'templates'
  end
end
