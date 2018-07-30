class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.1.3'
  url 'https://github.com/zgulde/cods/archive/v2.1.3.tar.gz'
  sha256 'ef3805fff615fd9a2ba7cd89a5ab77490444d38f3cdbaf07a8c92bbc6c799e49'

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
