class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '1.2.1'
  url 'https://github.com/zgulde/cods/archive/v1.2.1.tar.gz'
  sha256 '0c2fecdf6b75de71e9a428297c1efe13b5ede9e2d4bf5c6343de728f7308bc27'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.3.0-beta'
  end

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'CHANGELOG.md' # this contains version information
    prefix.install 'templates'
  end
end
