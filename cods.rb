class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.2.1'
  url 'https://github.com/zgulde/cods/archive/v3.2.1.tar.gz'
  sha256 'b92a32b347ce8ff225b2ecb08c987066e8b12da54adabf306b50ae145941c79f'

  depends_on 'python'
  depends_on 'perl'

  head 'https://github.com/zgulde/cods.git', :branch => 'master'

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
