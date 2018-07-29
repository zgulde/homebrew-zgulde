class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.1.2'
  url 'https://github.com/zgulde/cods/archive/v2.1.2.tar.gz'
  sha256 'f1f8f4049d91e767ea9b5d912347e0ad227179c642e9eef206d5d8d4ab4060e5'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.3.0-beta'
  end

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
