class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.2.2'
  url 'https://github.com/zgulde/cods/archive/v3.2.2.tar.gz'
  sha256 'e2e5c51d51eacf5a29ed4dbd16d5224963f7689f1c24152a097193bc6dcc5b89'

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
