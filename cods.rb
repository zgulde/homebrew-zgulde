class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.2.0'
  url 'https://github.com/zgulde/cods/archive/v3.2.0.tar.gz'
  sha256 '2918deb4caf009af520a785969ac48ebc43da535b1b6dbbdfffc13e014da23ab'

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
