class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '1.0.0'
  url 'https://github.com/zgulde/cods/archive/v1.0.0.tar.gz'
  sha256 '783e04684fd4412eeee96628090756c71c21b68c51a1b8e50637541d5531df5d'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.1.0-beta'
  end

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'CHANGELOG.md' # this contains version information
    prefix.install 'templates'
  end
end
