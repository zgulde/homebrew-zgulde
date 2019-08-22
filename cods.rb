class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.0.0'
  url 'https://github.com/zgulde/cods/archive/v3.0.0.tar.gz'
  sha256 'a09f1f7f5d86d041ee278362a6b22ce9702faae0155244d292e05dbf8cb5447c'

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
