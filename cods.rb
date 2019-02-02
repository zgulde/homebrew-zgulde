class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.2.2'
  url 'https://github.com/zgulde/cods/archive/v2.2.2.tar.gz'
  sha256 '1a057a06462aaed2f02c56b4813243ba87b91f22e2ab225630f46e4cb905abc3'

  head 'https://github.com/zgulde/cods.git', :branch => 'master'

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
