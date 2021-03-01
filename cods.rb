class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.3.2'
  url 'https://github.com/zgulde/cods/archive/v3.3.2.tar.gz'
  sha256 '548996ae9a733a8636cb8669df041831157a2f8f7d3eb2dddbbeb3a5914288ff'

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
