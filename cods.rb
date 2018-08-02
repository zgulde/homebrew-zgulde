class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.1.4'
  url 'https://github.com/zgulde/cods/archive/v2.1.4.tar.gz'
  sha256 'fbe18d0a956e6910f5d07ab5242a3cd2f9310b265d64fe326e0d030edc538ce3'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.3.0-beta'
  end

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
