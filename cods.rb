class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.3.3'
  url 'https://github.com/zgulde/cods/archive/v3.3.3.tar.gz'
  sha256 '9e57efa9ed8d629c5304464b998666dcf41ba8a6e7c17ce2696e23dd8566ff39'

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
