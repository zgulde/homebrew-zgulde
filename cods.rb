class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.2.0'
  url 'https://github.com/zgulde/cods/archive/v2.2.0.tar.gz'
  sha256 '292d8255377aa173b4913c94df172c2f425cb2c0fa5b1faa29e88cd8d7d01e9a'

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
