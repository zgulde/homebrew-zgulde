class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.0.3'
  url 'https://github.com/zgulde/cods/archive/v3.0.3.tar.gz'
  sha256 '280f5226782fd44e291b0a1afd9b67d55b7e1855fa0a8f2da5bdd97894dd9018'

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
