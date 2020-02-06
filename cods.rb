class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.3.0'
  url 'https://github.com/zgulde/cods/archive/v3.3.0.tar.gz'
  sha256 '6feaba0535861c559ef5ae5508cb19497ee126f8927c0c28f979c93aeb1324ab'

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
