class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.1.0'
  url 'https://github.com/zgulde/cods/archive/v3.1.0.tar.gz'
  sha256 'bd0346064c47c47d869f53c516e9a957db936e5cc89f48354a968d641a5979e7'

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
