class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.2.3'
  url 'https://github.com/zgulde/cods/archive/v2.2.3.tar.gz'
  sha256 'aed1ab7ad7607d63903176c71e52f17e9a512ff8e45b5aa45bccdca1eab8243d'

  head 'https://github.com/zgulde/cods.git', :branch => 'master'

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
