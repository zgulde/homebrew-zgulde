class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.0.2'
  url 'https://github.com/zgulde/cods/archive/v3.0.2.tar.gz'
  sha256 'ecd4325f279998f63c69a4a0f4de6639b1069c4324898c32cc71a856feb7687e'

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
