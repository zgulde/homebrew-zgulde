class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.3.1'
  url 'https://github.com/zgulde/cods/archive/v3.3.1.tar.gz'
  sha256 'c096128cfe27a52f5f756085d08dec6312647c934dc3e96cf33105acd6c6ed8d'

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
