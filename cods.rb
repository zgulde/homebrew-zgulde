class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.2.1'
  url 'https://github.com/zgulde/cods/archive/v2.2.1.tar.gz'
  sha256 '355c3df76b6e04d65127daabd43f30655f1721667129dd99199d68d77ec31fa3'

  head 'https://github.com/zgulde/cods.git', :branch => 'master'

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
